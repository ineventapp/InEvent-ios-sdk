//
//  INEventToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INEventToken.h"

@implementation INEventToken

#pragma mark - Singleton

+ (INEventToken *)sharedInstance
{
    static INEventToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INEventToken alloc] init];
        // Load the data that is already stored
        [sharedInstance setAllowedKeys:@[@"eventID", @"name", @"nickname", @"public"]];
        
        // eventID should always be a string
        if ([[sharedInstance objectForKey:@"eventID"] isKindOfClass:[NSNumber class]]) {
            [sharedInstance setObject:nil forKey:@"eventID"];
        }
        
#ifdef APP_EVENTID
        // Load a default value
        if ([APP_EVENTID integerValue] != 0) [sharedInstance setObject:@([APP_EVENTID integerValue]) forKey:@"eventID"];
#endif
        
    });
    return sharedInstance;
}

#pragma mark - Public Methods

- (void)crossTemporary:(NSString *)eventID runningRequest:(void (^)())request {
    [self setObject:eventID forKey:@"eventID"];
    request();
    [self resetData];
}

- (BOOL)isSelected {
    if ([[self objectForKey:@"eventID"] integerValue] != 0) {
        return YES;
    } else {
        return NO;
    }
}

- (void)resetData {
    // Remove all the data
    [super resetData];
    
#ifdef APP_EVENTID
    // Rewrite our default value
    [self setObject:@([APP_EVENTID integerValue]) forKey:@"eventID"];
#endif
}

@end
