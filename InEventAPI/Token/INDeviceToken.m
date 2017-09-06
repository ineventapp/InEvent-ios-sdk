//
//  INDeviceToken.m
//  InEvent
//
//  Created by Pedro Góes on 16/07/14.
//  Copyright (c) 2014 InEvent. All rights reserved.
//

#import "INDeviceToken.h"

@implementation INDeviceToken

#pragma mark - Singleton

+ (INDeviceToken *)sharedInstance
{
    static INDeviceToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INDeviceToken alloc] init];
        // Load the data that is already stored
        [sharedInstance setAllowedKeys:@[@"deviceID",
                                         @"timeDelta"]];
    });
    return sharedInstance;
}

@end
