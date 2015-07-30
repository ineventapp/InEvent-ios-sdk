//
//  INTrackingToken.m
//  InEvent
//
//  Created by Pedro Góes on 20/06/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "INTrackingToken.h"

@implementation INTrackingToken

#pragma mark - Singleton

+ (INTrackingToken *)sharedInstance
{
    static INTrackingToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INTrackingToken alloc] init];
        // Set default information for token
        [sharedInstance setAllowedKeys:@[@"queue"]];
        
        // Load an empty mutable array
        if ([sharedInstance objectForKey:@"queue"] == nil) [sharedInstance setObject:[NSMutableArray arrayWithCapacity:100] forKey:@"queue"];
    });
    return sharedInstance;
}

#pragma mark - User Methods

- (void)addToQueueWithTarget:(NSString *)target atTarget:(NSInteger)targetID {
    
    NSMutableArray *queueData = [self objectForKey:@"queue"];
    
    // Add a new reference
    [queueData addObject:@{
                           @"eventID": ([[INEventToken sharedInstance] isEventSelected] ? [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue] : @"0"),
                           @"target": target,
                           @"targetID": [NSString stringWithFormat:@"%ld", (long)targetID],
                           @"date": [NSString stringWithFormat:@"%lu", (long)[[NSDate date] timeIntervalSince1970]]}
     ];
    
    // Save our updated object
    [self setObject:queueData forKey:@"queue"];
}

- (void)pushQueueToServer {
    
    NSMutableArray *queueData = [self objectForKey:@"queue"];
    
    if ([queueData count] > 0) {
        // Convert our tracking data into an array
        NSString *stringData = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:queueData options:0 error:nil] encoding:NSUTF8StringEncoding];
        
        // See if your member is authenticated
        if ([[INPersonToken sharedInstance] isPersonAuthenticated]) {
            [[[INTrackingAPIController alloc] initWithDelegate:self] createAuthenticatedWithContent:stringData];
        } else {
            [[[INTrackingAPIController alloc] initWithDelegate:self] createWithContent:stringData];
        }
        
        // Remove sent references
        [queueData removeAllObjects];
        
        // Save our updated object
        [self setObject:queueData forKey:@"queue"];
    }
}

#pragma mark - APIController Delegate

- (void)apiController:(INAPIController *)apiController didFailWithError:(NSError *)error {
    
    if ([apiController.module isEqualToString:@"tracking"] && error.code != 406) {
        
        // Attempt to upload forever
        NSString *stringData = [[apiController.attributes objectForKey:@"POST"] objectForKey:@"content"];
        
        // Send as unauthenticated user
        [[[INTrackingAPIController alloc] initWithDelegate:self] createWithContent:stringData];
    }
}

@end
