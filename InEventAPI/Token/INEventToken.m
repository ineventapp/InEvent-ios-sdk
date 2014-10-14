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
        [sharedInstance setAllowedKeys:@[@"eventID",
                                         @"name",
                                         @"nickname"]];
    });
    return sharedInstance;
}

#pragma mark - User Methods

- (BOOL)isEventSelected {
    if ([[self objectForKey:@"eventID"] integerValue] != 0) {
        return YES;
    } else {
        return NO;
    }
}

- (void)removeEvent {
    // Remove all the data
    [self resetData];
    
    // Notify about the enterprise removal
    [[NSNotificationCenter defaultCenter] postNotificationName:@"selectFirstController" object:nil];
}

@end
