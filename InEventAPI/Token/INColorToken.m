//
//  INColorToken.m
//  InEvent
//
//  Created by Pedro Góes on 7/24/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "INColorToken.h"

@implementation INColorToken

#pragma mark - Singleton

+ (INColorToken *)sharedInstance
{
    static INColorToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INColorToken alloc] init];
        [sharedInstance setAllowedKeys:@[@"backgroundColor",
                                         @"navigationBackgroundColor",
                                         @"mainColor"]];
    });
    return sharedInstance;
}

@end
