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
        self.maxAge = [[aDecoder decodeObjectForKey:@"maxAge"] doubleValue];
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
    [aCoder encodeObject:self.userInfo forKey:@"userInfo"];
    [aCoder encodeObject:_version forKey:@"version"];
    [aCoder encodeObject:_module forKey:@"module"];
    [aCoder encodeObject:_method forKey:@"method"];
    [aCoder encodeObject:_attributes forKey:@"attributes"];
}

#pragma mark - Initializers

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate {
    return [self initWithDelegate:aDelegate returnPreviousSave:NO withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave {
    return [self initWithDelegate:aDelegate returnPreviousSave:aReturnPreviousSave withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave withUserInfo:(NSDictionary *)aUserInfo {
    
    self = [super init];
    if (self) {
        // Set our properties
        self.delegate = aDelegate;
        self.force = YES;
        self.saveForLater = YES;
        self.returnPreviousSave = aReturnPreviousSave;
        self.maxAge = 604800.0;
        self.userInfo = aUserInfo;
        _version = @"2";
    }
    return self;
}

#pragma mark - Setters

- (NSString *)path {
    return [self generatePath];
}

#pragma mark - Setup Methods

- (void)JSONObjectWithModule:(NSString *)module method:(NSString *)method attributes:(NSDictionary *)attributes {
    
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

- (NSString *)genRandStringLength:(int)len {
    
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randomString = [NSMutableString stringWithCapacity:len];
    
    for (int i = 0; i < len; i++) {
        [randomString appendFormat:@"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
}

- (NSString *)generatePath {
    
    NSMutableDictionary *simplifiedGETAttributes = [NSMutableDictionary dictionaryWithDictionary:[self.attributes objectForKey:@"GET"]];
    NSArray *simplifiedKeys = [simplifiedGETAttributes allKeys];
    
    for (int i = 0; i < [simplifiedKeys count]; i++) {
        if ([[simplifiedKeys objectAtIndex:i] rangeOfString:@"date"].location != NSNotFound) {
            [simplifiedGETAttributes removeObjectForKey:[simplifiedKeys objectAtIndex:i]];
        }
    }
    
    NSString *description = [[[simplifiedGETAttributes description] stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *filename = [NSString stringWithFormat:@"%@_%@_v%@_%@.json", self.module, self.method, self.version, description];
    
    NSCharacterSet *illegalFileNameCharacters = [NSCharacterSet characterSetWithCharactersInString:@"/\\?%*|\"<>"];
    NSString *cleanFilename = [[filename componentsSeparatedByCharactersInSet:illegalFileNameCharacters] componentsJoinedByString:@""];
    
    NSString *path = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:cleanFilename];
    
    return path;
}

- (BOOL)cacheFileForLaterSync {
    NSString *filename = [NSString stringWithFormat:@"%f.bin", [[NSDate date] timeIntervalSince1970]];
    
    NSString *directory = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"queue"];
    
    // Create directory if necessary
    BOOL isDir;
    BOOL existance = [[NSFileManager defaultManager] fileExistsAtPath:directory isDirectory:&isDir];
    if (!existance && isDir) [[NSFileManager defaultManager] createDirectoryAtPath:directory withIntermediateDirectories:NO attributes:nil error:nil];
    
    NSString *path = [directory stringByAppendingPathComponent:filename];
    
    return [NSKeyedArchiver archiveRootObject:self toFile:path];
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
            
            // See if there is a delegate to answer this request
            if ([self.delegate respondsToSelector:@selector(apiController:didLoadDictionaryFromServer:)]) {
                [self.delegate apiController:self didLoadDictionaryFromServer:archivedDictionary];
            }
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
        NSMutableString *url = [NSMutableString stringWithFormat:@"%@?action=%@.%@", URL_API, self.module, self.method];
        
        // Append our version number
        [url appendFormat:@"&version=%@", self.version];

        // Append our system default language
        [url appendFormat:@"&lang=%@", ([[NSLocale preferredLanguages] count] > 0 ? [[NSLocale preferredLanguages] objectAtIndex:0] : @"")];
        
        // Concatenate all the GET attributes inside the URL
        NSMutableArray *getKeys = [NSMutableArray arrayWithArray:[[self.attributes objectForKey:@"GET"] allKeys]];
        NSMutableArray *getObjects = [NSMutableArray arrayWithArray:[[self.attributes objectForKey:@"GET"] allObjects]];
        
        for (int i = 0; i < [getKeys count]; i++) {
            [url appendFormat:@"&%@=%@", [getKeys objectAtIndex:i], [[getObjects objectAtIndex:i] stringByEncodingURLWithEncoding:NSUTF8StringEncoding]];
        }
        
#ifdef DEBUG
        NSLog(@"%@", url);
#endif
        
        // Create a requisition
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
        [request setHTTPShouldHandleCookies:NO];
        [request setTimeoutInterval:20];
        [request setHTTPMethod:@"POST"];
        [request setURL:[NSURL URLWithString:url]];
        
        // Set Content-Type in HTTP header
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField: @"Content-Type"];
        
        // Concatenate all the POST attributes inside the URL
        NSMutableData *postAttributes = [NSMutableData data];
        
        // Add params (all params are strings)
        NSArray *postKeys = [[self.attributes objectForKey:@"POST"] allKeys];
        for (NSString *key in postKeys) {
            // See what ype of attribute we have
            if ([[[self.attributes objectForKey:@"POST"] objectForKey:key] isKindOfClass:[NSString class]]) {
                [postAttributes appendData:[[NSString stringWithFormat:@"&%@=%@", key, [[[self.attributes objectForKey:@"POST"] objectForKey:key] stringByEncodingURLWithEncoding:NSUTF8StringEncoding]] dataUsingEncoding:NSUTF8StringEncoding]];
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
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        // Alloc object if true
        if (connection) {
            _JSONData = [NSMutableData data];
        }
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    
    // Only validate 2xx requests
    if ((int)([((NSHTTPURLResponse *)response) statusCode] / 100) == 2) {
        
        // Reset our data object
        [self.JSONData setLength:0];
        
        // Send notification to the delegate
        if ([self.delegate respondsToSelector:@selector(apiController:didReceiveStatusCodeFromServer:)]) {
            [self.delegate apiController:self didReceiveStatusCodeFromServer:[((NSHTTPURLResponse *)response) statusCode]];
        }
        
    } else {
        
        // Kill the connection
        [connection cancel];
        
        // Send a notification to the delegate
        if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
            // Create a custom http error
            NSError *error = [NSError errorWithDomain:@"HTTP Code Error" code:[((NSHTTPURLResponse *)response) statusCode] userInfo:nil];
#ifdef DEBUG
            NSLog(@"%@", error.description);
#endif
            [self.delegate apiController:self didFailWithError:error];
        }
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append data to the main object
    [self.JSONData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite {
    // Notify delegate about our current load status
    if ([self.delegate respondsToSelector:@selector(apiController:didPartiallyReceiveDictionaryFromServer:)]) {
        [self.delegate apiController:self didPartiallyReceiveDictionaryFromServer:((CGFloat)totalBytesWritten / (CGFloat)totalBytesExpectedToWrite)];
    }
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // Should save for later?
    if (self.saveForLater) {
        
        // Save the file for later
        [self cacheFileForLaterSync];
    
        // Notify the delegate about the error
        if ([self.delegate respondsToSelector:@selector(apiController:didSaveForLaterWithError:)]) {
            [self.delegate apiController:self didSaveForLaterWithError:error];
        }
        
    } else if (!self.returnPreviousSave) {
        
        // Notify as a standard error
        if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
            [self.delegate apiController:self didFailWithError:error];
        }
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    // Deactivate status bar indicator
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
 
#ifdef DEBUG
    NSLog(@"%@", [[NSString alloc] initWithData:self.JSONData encoding:NSUTF8StringEncoding]);
#endif
    
    // Check for integrity
    if (self.JSONData) {
        dispatch_async(kGlobalQueue, ^{
            NSError *error = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:self.JSONData options:0 error:&error];
            [self performSelectorOnMainThread:@selector(processDownload:) withObject:JSON waitUntilDone:YES];
        });
    }
}

- (void)processDownload:(NSDictionary *)JSON {

    dispatch_async(dispatch_get_main_queue(), ^{
        // Some typo checking
        if (!JSON || !([JSON isKindOfClass:[NSDictionary class]])) {
            // Notify the delegate about the error
            if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
                [self.delegate apiController:self didFailWithError:[NSError errorWithDomain:@"self" code:3840 userInfo:nil]];
            }
            
        } else {
            // Let's also save our JSON object inside a file
            [NSKeyedArchiver archiveRootObject:JSON toFile:[self generatePath]];
            
            // Return our parsed object
            if ([self.delegate respondsToSelector:@selector(apiController:didLoadDictionaryFromServer:)]) {
                [self.delegate apiController:self didLoadDictionaryFromServer:JSON];
            }
        }
        
        // Try to send older cached files still on the queue
        NSString *directory = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"queue"];
        
        NSDirectoryEnumerator *queueFiles = [[NSFileManager defaultManager] enumeratorAtPath:directory];
        
        NSString *path;
        while (path = [queueFiles nextObject]) {
            if ([[path pathExtension] isEqualToString:@"bin"]) {
                // Load the object from the file system
                INAPIController *apiController = [NSKeyedUnarchiver unarchiveObjectWithFile:[directory stringByAppendingPathComponent:path]];
                // Remove the reference
                [[NSFileManager defaultManager] removeItemAtPath:[directory stringByAppendingPathComponent:path] error:nil];
                // Define a new delegate and launch it
                [apiController setDelegate:nil];
                [apiController startAsyncronousDownload];
                // Finish loop
                break;
            }
        }
    });
}

@end
