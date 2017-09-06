//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INAPIController.h"
#import "NSString+Encoding.h"
#import "ETAlertView.h"

#define kGlobalQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface INAPIController ()

@property (nonatomic, strong, readonly) NSMutableData *JSONData;

@end

@implementation INAPIController

#pragma mark - Coding

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.force = [[aDecoder decodeObjectForKey:@"force"] boolValue];
        self.saveForLater = [[aDecoder decodeObjectForKey:@"saveForLater"] boolValue];
        self.returnPreviousSave = [[aDecoder decodeObjectForKey:@"returnPreviousSave"] boolValue];
        _maxAge = [[aDecoder decodeObjectForKey:@"maxAge"] doubleValue];
        _offset = [[aDecoder decodeObjectForKey:@"offset"] integerValue];
        _limit = [[aDecoder decodeObjectForKey:@"limit"] integerValue];
        self.userInfo = [aDecoder decodeObjectForKey:@"userInfo"];
        _version = [aDecoder decodeObjectForKey:@"version"];
        _module = [aDecoder decodeObjectForKey:@"module"];
        _method = [aDecoder decodeObjectForKey:@"method"];
        _attributes = [aDecoder decodeObjectForKey:@"attributes"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:[NSNumber numberWithBool:self.force] forKey:@"force"];
    [aCoder encodeObject:[NSNumber numberWithBool:self.saveForLater] forKey:@"saveForLater"];
    [aCoder encodeObject:[NSNumber numberWithBool:self.returnPreviousSave] forKey:@"returnPreviousSave"];
    [aCoder encodeObject:[NSNumber numberWithDouble:self.maxAge] forKey:@"maxAge"];
    [aCoder encodeObject:[NSNumber numberWithInteger:self.offset] forKey:@"offset"];
    [aCoder encodeObject:[NSNumber numberWithInteger:self.limit] forKey:@"limit"];
    [aCoder encodeObject:self.userInfo forKey:@"userInfo"];
    [aCoder encodeObject:_version forKey:@"version"];
    [aCoder encodeObject:_module forKey:@"module"];
    [aCoder encodeObject:_method forKey:@"method"];
    [aCoder encodeObject:_attributes forKey:@"attributes"];
}

#pragma mark - Block Initializers

- (id)initWithSuccessCallback:(INSuccessBlock)aSuccessBlock failureCallback:(INFailureBlock)aFailureBlock returnPreviousSave:(BOOL)aReturnPreviousSave; {
    
    self = [self initWithDelegate:nil returnPreviousSave:aReturnPreviousSave withOffset:0 withUserInfo:nil];
    if (self) {
        self.successBlock = aSuccessBlock;
        self.failureBlock = aFailureBlock;
    }
    return self;
}

- (id)initWithSuccessCallback:(INSuccessBlock)aSuccessBlock progressCallback:(INProgressBlock)aProgressBlock failureCallback:(INFailureBlock)aFailureBlock returnPreviousSave:(BOOL)aReturnPreviousSave {
    
    self = [self initWithDelegate:nil returnPreviousSave:aReturnPreviousSave withOffset:0 withUserInfo:nil];
    if (self) {
        self.successBlock = aSuccessBlock;
        self.progressBlock = aProgressBlock;
        self.failureBlock = aFailureBlock;
    }
    return self;
}

#pragma mark - Delegate Initializers
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate {
    return [self initWithDelegate:aDelegate returnPreviousSave:NO withOffset:0 withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave {
    return [self initWithDelegate:aDelegate returnPreviousSave:aReturnPreviousSave withOffset:0 withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave withOffset:(NSInteger)aOffset {
    return [self initWithDelegate:aDelegate returnPreviousSave:aReturnPreviousSave withOffset:aOffset withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave withUserInfo:(NSDictionary *)aUserInfo {
    return [self initWithDelegate:aDelegate returnPreviousSave:aReturnPreviousSave withOffset:0 withUserInfo:aUserInfo];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave withOffset:(NSInteger)aOffset withUserInfo:(NSDictionary *)aUserInfo {
    
    self = [super init];
    if (self) {
        // Set our properties
        self.delegate = aDelegate;
        self.force = YES;
        self.saveForLater = YES;
        self.returnPreviousSave = aReturnPreviousSave;
        _maxAge = 604800.0;
        self.offset = aOffset;
        self.limit = 20;
        self.userInfo = aUserInfo;
        _version = @"2";
    }
    return self;
}

#pragma mark - Properties

- (NSString *)path {
    return [self generatePath];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@", _module, _method];
}

#pragma mark - Setup Methods

- (void)objectWithModule:(NSString *)module method:(NSString *)method attributes:(NSDictionary *)attributes {
    
    // Set our properties
    _module = module;
    _method = method;
    _attributes = attributes;
    
    // Send notification to the delegate
    if ([self.delegate respondsToSelector:@selector(apiControllerWillStartAsyncronousDownload:)]) {
        [self.delegate apiControllerWillStartAsyncronousDownload:self];
    }

    // Start download
    [self startAsyncronousDownload];
}

- (NSString *)generateRandomStringForLength:(int)len {
    
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randomString = [NSMutableString stringWithCapacity:len];
    
    for (int i = 0; i < len; i++) {
        [randomString appendFormat:@"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
}

- (NSString *)generatePath {
    
    NSMutableDictionary *simplifiedGETAttributes = [NSMutableDictionary dictionaryWithDictionary:[self.attributes objectForKey:@"GET"]];
    
    // Remove extremely variable attributes
    NSArray *simplifiedGETKeys = [simplifiedGETAttributes allKeys];
    for (int i = 0; i < [simplifiedGETKeys count]; i++) {
        if ([[simplifiedGETKeys objectAtIndex:i] rangeOfString:@"date"].location != NSNotFound) {
            [simplifiedGETAttributes removeObjectForKey:[simplifiedGETKeys objectAtIndex:i]];
        }
    }
    
    // Append parts to create an unique identifier
    NSMutableString *rawFilename = [NSMutableString string];
    for (NSString *part in @[
                             self.module,
                             self.method,
                             self.version,
                             [NSString stringWithFormat:@"%ld", (long)self.offset],
                             [simplifiedGETAttributes description] ?: @"",
                             [self.userInfo description] ?: @""]) {
        
        [rawFilename appendString:[[part stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""]];
    }
    [rawFilename appendString:@".json"];
    
    // Remove anything which is illegal
    NSCharacterSet *illegalFileNameCharacters = [NSCharacterSet characterSetWithCharactersInString:@"/\\?%*|\"<>"];
    NSString *cleanFilename = [[rawFilename componentsSeparatedByCharactersInSet:illegalFileNameCharacters] componentsJoinedByString:@""];
    
    NSString *path = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:cleanFilename];
    
    return path;
}

#pragma mark - Clean Singletons

+ (void)cleanStoredQueue {
    NSString *directory = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"queue"];
    [INAPIController removeAllFilesAtDirectory:directory withExtension:@"bin"];
}

+ (void)cleanCurrentCache {
    NSString *directory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    [INAPIController removeAllFilesAtDirectory:directory withExtension:@"json"];
}

+ (void)removeAllFilesAtDirectory:(NSString *)directory withExtension:(NSString *)extension {
    
    // Enumerate all available files
    NSString *filename;
    NSDirectoryEnumerator *queueFiles = [[NSFileManager defaultManager] enumeratorAtPath:directory];
    
    // Loop through existing files
    while (filename = [queueFiles nextObject]) {
        if ([[filename pathExtension] isEqualToString:extension]) {
            NSString *path = [directory stringByAppendingPathComponent:filename];
            [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        }
    }
}

#pragma mark - Processing Methods

- (BOOL)cacheFileForLaterSync {
    
    // Create filename and directory
    NSString *filename = [NSString stringWithFormat:@"%f.bin", [[NSDate date] timeIntervalSince1970]];
    NSString *directory = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"queue"];
    
    // Create directory if necessary
    if (![[NSFileManager defaultManager] fileExistsAtPath:directory]) {
        [[NSFileManager defaultManager] createDirectoryAtPath:directory withIntermediateDirectories:NO attributes:nil error:nil];
    }
    
    // Assemble final path for metadata
    NSString *path = [directory stringByAppendingPathComponent:filename];
    
    return [NSKeyedArchiver archiveRootObject:self toFile:path];
}

- (void)deliverSuccessfulDictionary:(NSDictionary *)dictionary {
    
    if (self.successBlock) {
        if ([[dictionary objectForKey:@"data"] count] > 0) {
            NSDictionary *firstChild = [[dictionary objectForKey:@"data"] firstObject];
            if ([firstChild isKindOfClass:[NSDictionary class]]) {
                self.successBlock(firstChild);
            }
        }
        self.successBlock = nil;
    }
    
    if ([self.delegate respondsToSelector:@selector(apiController:didLoadDictionaryFromServer:)]) {
        [self.delegate apiController:self didLoadDictionaryFromServer:dictionary];
    }
}

- (void)notifyFailureWithError:(NSError *)error {
    
    if (self.failureBlock) {
        self.failureBlock(error);
        self.failureBlock = nil;
    }
    
    if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
        [self.delegate apiController:self didFailWithError:error];
    }
}

#pragma mark - Connection Support

- (void)startAsyncronousDownload {
    
    NSString *path = [self generatePath];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // Check if the data file is available inside the filesystem
    BOOL existance = [fileManager fileExistsAtPath:path];

    // fileDate will be zero if file doesn't exist
    NSTimeInterval fileDate = [[[fileManager attributesOfItemAtPath:path error:nil] fileModificationDate] timeIntervalSince1970];
    NSTimeInterval currentDate = [[NSDate date] timeIntervalSince1970];
    
    // Check if the maximum cache age has been surpassed or file doesn't exist
    // In case any of these is true, we set the controller to the forced state
    if (currentDate - fileDate > self.maxAge) {
        self.force = YES;
    }
    
    BOOL isCacheAvailable = NO;
    
    // If we are not forcing, it means we want our cached version if available
    if (!self.force) self.returnPreviousSave = YES;
    
    // If our cache is good enough, we don't need to save for later
    // We will only allow our cache to return for read requests, and no read requests need to be cached
    // for later (if necessary, they should be made again).
    if (self.returnPreviousSave) self.saveForLater = NO;
    
    // If we want our data faster and it is available, we return it
    if (existance && self.returnPreviousSave) {
            
        @try {
            // Defer our object
            isCacheAvailable = YES;
            
            // Load it from the filesystem
            NSDictionary *archivedDictionary = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
            
            // Return call to our delegate if any are available
            [self deliverSuccessfulDictionary:archivedDictionary];
        }
        @catch (NSException *exception) {
            // Refuse our object
            isCacheAvailable = NO;
            
            // Remove it from the filesystem
            NSError *error = nil;
            [fileManager removeItemAtPath:path error:&error];
        }
    }

    // If cache is not available or we want to force, we should make our request
    if (!isCacheAvailable || self.force) {
        
        // Define our API url
        NSMutableString *url = [NSMutableString stringWithFormat:@"%@?action=%@.%@", IN_URL_API, self.module, self.method];
        
        // Append our API version number
        [url appendFormat:@"&apiVersion=%@", self.version];
        
        // Append our offset
        [url appendFormat:@"&offset=%@", [NSString stringWithFormat:@"%ld", (long)self.offset]];
        
        // Append our limit
        [url appendFormat:@"&limit=%@", [NSString stringWithFormat:@"%ld", (long)self.limit]];
        
        // Append our app version number
        [url appendFormat:@"&appVersion=%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];

        // Append our system default language
        [url appendFormat:@"&lang=%@", ([[NSLocale preferredLanguages] count] > 0 ? [[NSLocale preferredLanguages] objectAtIndex:0] : @"")];
        
        // Concatenate all the GET attributes inside the URL
        NSArray *getKeys = [[self.attributes objectForKey:@"GET"] allKeys];
        NSDictionary *getObjects = [self.attributes objectForKey:@"GET"];
        
        for (NSString *key in getKeys) {
            [url appendFormat:@"&%@=%@", key, [[getObjects objectForKey:key] stringByEncodingURLWithEncoding:NSUTF8StringEncoding]];
        }
        
        // Create a requisition
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
        [request setHTTPShouldHandleCookies:NO];
        [request setTimeoutInterval:30];
        [request setHTTPMethod:@"POST"];
        [request setURL:[NSURL URLWithString:url]];
        
        // Define our boundaries
        NSString *boundary = [self generateRandomStringForLength:14];
        
        // See if we have a single module for creating files
        NSString *contentType = ([_module isEqualToString:@"file"] && [_method isEqualToString:@"create"]) ? @"image/png" : nil;
        
        // Set Content-Type in HTTP header
        if (contentType) {
            [request setValue:[NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary] forHTTPHeaderField:@"Content-Type"];
        } else {
            [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        }
        
        // Concatenate all remaining attributes inside our body
        NSMutableData *postAttributes = [NSMutableData data];
        
        // Add params (all params are strings)
        NSArray *postKeys = [[self.attributes objectForKey:@"POST"] allKeys];
        NSDictionary *postObjects = [self.attributes objectForKey:@"POST"];
        
        // See if our contentType will vary for files
        if (contentType) {
            
            for (NSString *key in postKeys) {
                    
                // Begin
                [postAttributes appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
                
                // Content-Disposition
                if ([contentType isEqualToString:@"text/plain"]) {
                    [postAttributes appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"\r\n", key] dataUsingEncoding:NSUTF8StringEncoding]];
                } else {
                    [postAttributes appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"; filename=\"%@\"\r\n", key, [contentType stringByReplacingOccurrencesOfString:@"/" withString:@"."]] dataUsingEncoding:NSUTF8StringEncoding]];
                }
                
                // Content-Type
                [postAttributes appendData:[[NSString stringWithFormat:@"Content-Type: %@\r\n\r\n", contentType] dataUsingEncoding:NSUTF8StringEncoding]];
                
                // Content
                if ([contentType isEqualToString:@"text/plain"]) {
                    [postAttributes appendData:[[postObjects objectForKey:key] dataUsingEncoding:NSUTF8StringEncoding]];
                } else {
                    [postAttributes appendData:[[NSData alloc] initWithBase64EncodedString:[postObjects objectForKey:key] options:NSDataBase64DecodingIgnoreUnknownCharacters]];
                }
                
                // End
                [postAttributes appendData:[[NSString stringWithFormat:@"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
            }
            
            [postAttributes appendData:[[NSString stringWithFormat:@"--%@--\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
            
        } else {
        
            for (NSString *key in postKeys) {
                
                // See what type of attribute we have
                id obj = [[self.attributes objectForKey:@"POST"] objectForKey:key];
                
                // Convert objects to strings
                if ([obj isKindOfClass:[NSData class]]) {
                    obj = [[NSString alloc] initWithData:obj encoding:NSUTF8StringEncoding];
                }
                
                // Encode strings for http
                if ([obj isKindOfClass:[NSString class]]) {
                    obj = [obj stringByEncodingURLWithEncoding:NSUTF8StringEncoding];
                }
                
                // Post to our request body
                [postAttributes appendData:[[NSString stringWithFormat:@"&%@=%@", key, obj] dataUsingEncoding:NSUTF8StringEncoding]];
            }
        }
        
        // Setting the body of the post to the reqeust
        [request setHTTPBody:postAttributes];
        
        // Set the content-length
        NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postAttributes length]];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        
        // Activate status bar indicator
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        
        // Create a connection
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        NSURLSession *urlSession = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
        NSURLSessionDataTask *dataTask = [urlSession dataTaskWithRequest:request];
        [dataTask resume];
        
        // Alloc object if true
        if (dataTask) _JSONData = [NSMutableData data];
    }
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveResponse:(NSURLResponse *)response completionHandler:(void (^)(NSURLSessionResponseDisposition disposition))completionHandler {
    
    // Only validate 2xx requests
    if ((int)([((NSHTTPURLResponse *)response) statusCode] / 100) == 2) {
        
        // Reset our data object
        [self.JSONData setLength:0];
        
        // Call back on our main thread
        dispatch_async(dispatch_get_main_queue(), ^{
        
            // Send notification to the delegate
            if ([self.delegate respondsToSelector:@selector(apiController:didReceiveStatusCodeFromServer:)]) {
                [self.delegate apiController:self didReceiveStatusCodeFromServer:[((NSHTTPURLResponse *)response) statusCode]];
            }
        });
        
        // Allow connection
        completionHandler(NSURLSessionResponseAllow);
        
    } else {
        
        // Kill the connection
        completionHandler(NSURLSessionResponseCancel);
        
        // Call back on our main thread
        dispatch_async(dispatch_get_main_queue(), ^{
        
            // Send a notification to the delegate
            [self notifyFailureWithError:[NSError errorWithDomain:[response description] code:[((NSHTTPURLResponse *)response) statusCode] userInfo:nil]];
        });
    }
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data {
    
    // Append data to the main object
    [self.JSONData appendData:data];
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didSendBodyData:(int64_t)bytesSent totalBytesSent:(int64_t)totalBytesSent totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend {
    
    // Call back on our main thread
    dispatch_async(dispatch_get_main_queue(), ^{
        
        // Notify delegate about our current load status
        CGFloat percentage = ((CGFloat)totalBytesSent / (CGFloat)totalBytesExpectedToSend);
        
        if (self.progressBlock) {
            self.progressBlock(@(percentage));
        }
        
        if ([self.delegate respondsToSelector:@selector(apiController:didPartiallyReceiveDictionaryFromServer:)]) {
            [self.delegate apiController:self didPartiallyReceiveDictionaryFromServer:percentage];
        }
    });
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error {
    
    // Deactivate status bar indicator
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    // Has task failed?
    if (error) {
        
        // User has canceled task
        if (error.code == NSURLErrorCancelled) {
            return;

        } else if (self.saveForLater) {
            
            // Save the file for later
            [self cacheFileForLaterSync];
                
            // Call back on our main thread
            dispatch_async(dispatch_get_main_queue(), ^{
            
                // Notify the delegate about the error
                [self notifyFailureWithError:error];
            });
                
        } else if (!self.returnPreviousSave) {
                
            // Call back on our main thread
            dispatch_async(dispatch_get_main_queue(), ^{
                
                // Notify as a standard error
                [self notifyFailureWithError:error];
            });
        }
        
    } else {
 
#ifdef DEBUG
    NSLog(@"%@", [[NSString alloc] initWithData:self.JSONData encoding:NSUTF8StringEncoding]);
#endif
        
        // Check for integrity
        if (self.JSONData) {
            
            // Run on background
            dispatch_async(kGlobalQueue, ^{
                
                // Parse json object into dictionary
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:self.JSONData options:0 error:nil];
                
                // Call back on our main thread
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    // Some typo checking
                    if (JSON && [JSON isKindOfClass:[NSDictionary class]]) {
                        
                        // Let's also save our JSON object inside a file
                        [NSKeyedArchiver archiveRootObject:JSON toFile:[self generatePath]];
                        
                        // And deliver it to our delegates
                        [self deliverSuccessfulDictionary:JSON];
                        
                    } else {
                        
                        // Notify the delegate about the error
                        [self notifyFailureWithError:[NSError errorWithDomain:@"self" code:3840 userInfo:nil]];
                    }
                    
                    // Try to send older cached files still on the queue
                    NSString *directory = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"queue"];
                    
                    NSString *filename;
                    NSDirectoryEnumerator *queueFiles = [[NSFileManager defaultManager] enumeratorAtPath:directory];
                    
                    // Loop through existing files
                    while (filename = [queueFiles nextObject]) {
                        
                        // Find our stored controllers
                        if ([[filename pathExtension] isEqualToString:@"bin"]) {
                            
                            NSString *path = [directory stringByAppendingPathComponent:filename];
                            
                            // Load the object from the filesystem
                            INAPIController *apiController = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
                            
                            // Remove the reference from the filesystem
                            [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
                            
                            // Define a new delegate and launch it
                            [apiController setDelegate:nil];
                            [apiController startAsyncronousDownload];
                        }
                    }
                });
            });
        }
    }
}


@end
