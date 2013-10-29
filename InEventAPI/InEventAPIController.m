//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventAPIController.h"
#import "NSString+URLEncoding.h"

#define kGlobalQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface InEventAPIController ()

@property (nonatomic, strong) NSMutableData *JSONData;
@property (nonatomic, strong) NSDictionary *attributes;

@end

@implementation InEventAPIController

#pragma mark - Coding

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.force = [[aDecoder decodeObjectForKey:@"force"] boolValue];
        self.saveForLater = [[aDecoder decodeObjectForKey:@"saveForLater"] boolValue];
        self.maxAge = [[aDecoder decodeObjectForKey:@"maxAge"] doubleValue];
        self.userInfo = [aDecoder decodeObjectForKey:@"userInfo"];
        self.namespace = [aDecoder decodeObjectForKey:@"namespace"];
        self.method = [aDecoder decodeObjectForKey:@"method"];
        self.attributes = [aDecoder decodeObjectForKey:@"attributes"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:[NSNumber numberWithBool:self.force] forKey:@"force"];
    [aCoder encodeObject:[NSNumber numberWithBool:self.saveForLater] forKey:@"saveForLater"];
    [aCoder encodeObject:[NSNumber numberWithDouble:self.maxAge] forKey:@"maxAge"];
    [aCoder encodeObject:self.userInfo forKey:@"userInfo"];
    [aCoder encodeObject:self.namespace forKey:@"namespace"];
    [aCoder encodeObject:self.method forKey:@"method"];
    [aCoder encodeObject:self.attributes forKey:@"attributes"];
}

#pragma mark - Initializers

- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate {
    return [self initWithDelegate:aDelegate forcing:NO withMaxAge:604800.0 withUserInfo:nil];
}

- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce {
    return [self initWithDelegate:aDelegate forcing:aForce withMaxAge:604800.0 withUserInfo:nil];
}

- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withUserInfo:(NSDictionary *)aUserInfo {
    return [self initWithDelegate:aDelegate forcing:aForce withMaxAge:604800.0 withUserInfo:aUserInfo];
}

- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withMaxAge:(NSTimeInterval)aMaxAge withUserInfo:(NSDictionary *)aUserInfo {
    
    self = [super init];
    if (self) {
        // Set our properties
        self.delegate = aDelegate;
        self.force = aForce;
        self.saveForLater = YES;
        self.maxAge = aMaxAge;
        self.userInfo = aUserInfo;
    }
    return self;
}

#pragma mark - Notifications

- (void)notificationGetNumberOfNotificationsWithTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
    
        [self JSONObjectWithNamespace:@"notification" method:@"getNumberOfNotifications" attributes:attributes];
    }
}

- (void)notificationGetNotificationsWithTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
    
        [self JSONObjectWithNamespace:@"notification" method:@"getNotifications" attributes:attributes];
    }
}

- (void)notificationGetNotificationsSinceNotification:(NSInteger)lastNotificationID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lastNotificationID" : [NSString stringWithFormat:@"%d", lastNotificationID]}};
    
        [self JSONObjectWithNamespace:@"notification" method:@"getNotificationsSinceNotification" attributes:attributes];
    }
}

- (void)notificationGetLastNotificationIDWithTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
        
        [self JSONObjectWithNamespace:@"notification" method:@"getLastNotificationID" attributes:attributes];
    }
}

- (void)notificationGetNotificationsWithinTime:(NSInteger)seconds withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"seconds" : [NSString stringWithFormat:@"%d", seconds]}};
    
        [self JSONObjectWithNamespace:@"notification" method:@"getLastNotificationID" attributes:attributes];
    }
}

- (void)notificationGetSingleNotification:(NSInteger)notificationID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"notificationID" : [NSString stringWithFormat:@"%d", notificationID]}};
    
        [self JSONObjectWithNamespace:@"notification" method:@"getSingleNotification" attributes:attributes];
    }
}

#pragma mark - Setters

- (NSString *)path {
    return [self generatePath];
}

#pragma mark - Setup Methods

- (void)JSONObjectWithNamespace:(NSString *)namespace method:(NSString *)method attributes:(NSDictionary *)attributes {
    
    // Set our properties
    self.namespace = namespace;
    self.method = method;
    self.attributes = attributes;

    [self start];
}

- (NSString *)generatePath {
    
    NSString *description = [[[_attributes description] stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *filename = [NSString stringWithFormat:@"%@_%@_%@.json", _namespace, _method, description];
    
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
    [[NSFileManager defaultManager] fileExistsAtPath:directory isDirectory:&isDir];
    if (!isDir) [[NSFileManager defaultManager] createDirectoryAtPath:directory withIntermediateDirectories:NO attributes:nil error:nil];
    
    NSString *path = [directory stringByAppendingPathComponent:filename];
    
    return [NSKeyedArchiver archiveRootObject:self toFile:path];
}

#pragma mark - Connection Support

- (void)start {
    
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
    
    // If the data shouldn't be download again (a.k.a. forced), we just retrieve it from the filesystem
    if (existance && !_force) {
        // Load it from the filesystem
        if ([self.delegate respondsToSelector:@selector(apiController:didLoadDictionaryFromServer:)]) {
            [self.delegate apiController:self didLoadDictionaryFromServer: [NSDictionary dictionaryWithContentsOfFile:path]];
        }
    } else {
        // Define our API url
        NSMutableString *url = [NSMutableString stringWithFormat:@"%@developer/api/?method=%@.%@", URL, _namespace, _method];
        
        // Concatenate all the GET attributes inside the URL
        for (NSString *param in [[_attributes objectForKey:@"GET"] allKeys]) {
            [url appendFormat:@"&%@=%@", param, [[[_attributes objectForKey:@"GET"] objectForKey:param] urlEncodeUsingEncoding:NSUTF8StringEncoding]];
        }
        
#ifdef DEBUG
        NSLog(@"%@", url);
#endif
    
        // Concatenate all the POST attributes inside the URL
        NSMutableString *postAttributes = [NSMutableString string];
        
        for (NSString *param in [[_attributes objectForKey:@"POST"] allKeys]) {
            [postAttributes appendFormat:@"&%@=%@", param, [[[_attributes objectForKey:@"POST"] objectForKey:param] urlEncodeUsingEncoding:NSUTF8StringEncoding]];
        }
        
        // Create a requisition
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20.0];
        
        if ([_attributes objectForKey:@"POST"] != nil) {
            [request setHTTPBody:[[postAttributes substringFromIndex:1] dataUsingEncoding:NSUTF8StringEncoding]];
            [request setHTTPMethod:@"POST"];
        }
        
        // Create a connection
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        // Alloc object if true
        if (connection) {
            self.JSONData = [NSMutableData data];
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
            [self.delegate apiController:self didFailWithError:error];
        }
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append data
    [self.JSONData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // Save the file for later
    if (self.saveForLater) [self cacheFileForLaterSync];
    
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
        [JSON writeToFile:[self generatePath] atomically:YES];
        
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
            InEventAPIController *apiController = [NSKeyedUnarchiver unarchiveObjectWithFile:[directory stringByAppendingPathComponent:path]];
            // Remove the reference
            [[NSFileManager defaultManager] removeItemAtPath:[directory stringByAppendingPathComponent:path] error:nil];
            // Define a new delegate and launch it
            [apiController setDelegate:nil];
            [apiController start];
            // Finish loop
            break;
        }
    }
}

@end
