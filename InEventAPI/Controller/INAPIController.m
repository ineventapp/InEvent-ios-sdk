//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#include <objc/runtime.h>
#import "INAPIController.h"
#import "INEventToken.h"
#import "INPersonToken.h"
#import "NSString+URLEncoding.h"

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
    [aCoder encodeObject:[NSNumber numberWithDouble:self.maxAge] forKey:@"maxAge"];
    [aCoder encodeObject:self.userInfo forKey:@"userInfo"];
    [aCoder encodeObject:_version forKey:@"version"];
    [aCoder encodeObject:_module forKey:@"module"];
    [aCoder encodeObject:_method forKey:@"method"];
    [aCoder encodeObject:_attributes forKey:@"attributes"];
}

#pragma mark - Initializers

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate {
    return [self initWithDelegate:aDelegate forcing:NO withMaxAge:604800.0 withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce {
    return [self initWithDelegate:aDelegate forcing:aForce withMaxAge:604800.0 withUserInfo:nil];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withUserInfo:(NSDictionary *)aUserInfo {
    return [self initWithDelegate:aDelegate forcing:aForce withMaxAge:604800.0 withUserInfo:aUserInfo];
}

- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withMaxAge:(NSTimeInterval)aMaxAge withUserInfo:(NSDictionary *)aUserInfo {
    
    self = [super init];
    if (self) {
        // Set our properties
        self.delegate = aDelegate;
        self.force = aForce;
        self.saveForLater = YES;
        self.maxAge = aMaxAge;
        self.userInfo = aUserInfo;
        _version = @"2";
    }
    return self;
}

#pragma mark - Setters

- (NSString *)path {
    return [self generatePath];
}

#pragma mark - Verification
- (BOOL)isRepresentedBySelector:(SEL)selector {
    return sel_isEqual(NSSelectorFromString(self.caller), selector);
}

#pragma mark - Setup Methods

- (void)JSONObjectWithModule:(NSString *)module method:(NSString *)method attributes:(NSDictionary *)attributes {
    
    // Set our properties
    _module = module;
    _method = method;
    _caller = ([[NSThread callStackSymbols] count] >= 2) ? [NSThread callStackSymbols][1] : @"";
    
    // Make sure we have set all other properties
    _attributes = [self dictionaryByAppendingGlobalAttributes:attributes];

    [self startAsyncronousDownload];
}

- (NSDictionary *)dictionaryByAppendingGlobalAttributes:(NSDictionary *)dictionary {
    
    NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionary];
    NSMutableDictionary *getDictionary = [NSMutableDictionary dictionaryWithDictionary:[dictionary objectForKey:@"GET"]];
    
    // Add our tokenID is the method has our special keyword
    if ([[self.caller lowercaseString] rangeOfString:@"authenticated"].location != NSNotFound) {
        if ([[INPersonToken sharedInstance] objectForKey:@"tokenID"] != nil) {
            [getDictionary setObject:[[INPersonToken sharedInstance] objectForKey:@"tokenID"] forKey:@"tokenID"];
        }
    }
    
    // Add our eventID is the method has our special keyword
    if ([[self.caller lowercaseString] rangeOfString:@"atevent"].location != NSNotFound) {
        if ([[[INEventToken sharedInstance] objectForKey:@"eventID"] integerValue] != 0) {
            [getDictionary setObject:[NSString stringWithFormat:@"%ld", [[[INEventToken sharedInstance] objectForKey:@"eventID"] longValue]] forKey:@"eventID"];
        }
    }
    
    // Save objects into global dictionary
    [mutableDictionary setObject:getDictionary forKey:@"GET"];

    return mutableDictionary;
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
    
    NSString *description = [[[self.attributes description] stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
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

    // Check if the maximum cache age has been surpassed
    NSError *attributesRetrievalError = nil;
    NSTimeInterval fileDate = [[[fileManager attributesOfItemAtPath:path error:&attributesRetrievalError] fileModificationDate] timeIntervalSince1970];
    NSTimeInterval currentDate = [[NSDate date] timeIntervalSince1970];
    
    // In case it has, we set the controller to the forced state
    if (currentDate - fileDate > self.maxAge) {
        self.force = YES;
    }
    
    BOOL isIntact = NO;
    
    // If the data shouldn't be download again (a.k.a. forced), we just retrieve it from the filesystem
    if (existance && !self.force) {
        
        // See if there is a delegate to answer this request
        if ([self.delegate respondsToSelector:@selector(apiController:didLoadDictionaryFromServer:)]) {
            
            @try {
                // Defer our object
                isIntact = YES;
                // Load it from the filesystem
                NSData *archivedData = [NSData dataWithContentsOfFile:path];
                [self.delegate apiController:self didLoadDictionaryFromServer:[NSKeyedUnarchiver unarchiveObjectWithData:archivedData]];
            }
            @catch (NSException *exception) {
                // Refuse our object
                isIntact = NO;
                // Remove it from the filesystem
                [fileManager removeItemAtPath:path error:nil];
            }
        }
    }

    if (!isIntact) {
        // Define our API url
        NSMutableString *url = [NSMutableString stringWithFormat:@"%@?action=%@.%@", URL_API, self.module, self.method];
        
        // Append our version number
        [url appendFormat:@"&version=%@", self.version];
        
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
        
        NSString *boundary = [self genRandStringLength:14];
        
        // Set Content-Type in HTTP header
        NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary];
        [request setValue:contentType forHTTPHeaderField: @"Content-Type"];
        
        // Concatenate all the POST attributes inside the URL
        NSMutableData *postAttributes = [NSMutableData data];
        
        // Add params (all params are strings)
        NSArray *postKeys = [[self.attributes objectForKey:@"POST"] allKeys];
        for (NSString *param in postKeys) {
            
            // See what ype of attribute we have
            if ([[[self.attributes objectForKey:@"POST"] objectForKey:param] isKindOfClass:[NSString class]]) {
                
                NSString *paramString = [[self.attributes objectForKey:@"POST"] objectForKey:param];
                
                [postAttributes appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
                [postAttributes appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"\r\n\r\n", param] dataUsingEncoding:NSUTF8StringEncoding]];
                [postAttributes appendData:[[NSString stringWithFormat:@"%@\r\n", paramString] dataUsingEncoding:NSUTF8StringEncoding]];
                
            } else {
                
                NSData *paramData = [[self.attributes objectForKey:@"POST"] objectForKey:param];
                
                [postAttributes appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
                [postAttributes appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"; filename=\"image.jpg\"\r\n", param] dataUsingEncoding:NSUTF8StringEncoding]];
                [postAttributes appendData:[@"Content-Type: image/jpeg\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
                [postAttributes appendData:paramData];
                [postAttributes appendData:[[NSString stringWithFormat:@"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
            }
        }
        
#ifdef DEBUG
        NSLog(@"%@", postAttributes);
#endif
        
        [postAttributes appendData:[[NSString stringWithFormat:@"--%@--\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
        
        // Setting the body of the post to the reqeust
        [request setHTTPBody:postAttributes];
        
        // Set the content-length
        NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postAttributes length]];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        
        // Create a connection
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        // Alloc object if true
        if (connection) {
            _JSONData = [NSMutableData data];
        }
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    
    if ([((NSHTTPURLResponse *)response) statusCode] == 200) {
        [self.JSONData setLength:0];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    } else {
        // Kill the connection
        [connection cancel];
        
        // Send a notification to the delegate
        if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
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
    // Save the file for later
    if (self.saveForLater) {
        [self cacheFileForLaterSync];
    }
    
    // Notify the delegate about the error
    if ([self.delegate respondsToSelector:@selector(apiController:didSaveForLaterWithError:)]) {
        [self.delegate apiController:self didSaveForLaterWithError:error];
        
    } else if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
        [self.delegate apiController:self didFailWithError:error];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
 
#ifdef DEBUG
    NSLog(@"%@", [[NSString alloc] initWithData:self.JSONData encoding:NSUTF8StringEncoding]);
#endif
    
    // Check for integrity
    if (self.JSONData) {
        dispatch_async(kGlobalQueue, ^{
            NSError *error = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:self.JSONData options:0 error:&error];
            [self performSelectorOnMainThread:@selector(end:) withObject:JSON waitUntilDone:YES];
        });
    }
}

- (void)end:(NSDictionary *)JSON {

    // Some typo checking
    if (!JSON || !([JSON isKindOfClass:[NSDictionary class]])) {
        // Notify the delegate about the error
        if ([self.delegate respondsToSelector:@selector(apiController:didFailWithError:)]) {
            [self.delegate apiController:self didFailWithError:[NSError errorWithDomain:@"self" code:3840 userInfo:nil]];
        }
    } else {
        
        // Let's also save our JSON object inside a file
        [[NSKeyedArchiver archivedDataWithRootObject:JSON] writeToFile:[self generatePath] atomically:YES];
        
        // See if we have a valid token and assign it to our singleton
        if ([self.method isEqualToString:@"signIn"]) {
            if ([[JSON objectForKey:@"data"] count] > 0) {
                [[INPersonToken sharedInstance] setObject:[[[JSON objectForKey:@"data"] firstObject] objectForKey:@"tokenID"] forKey:@"tokenID"];
            }
        }
        
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
}

@end
