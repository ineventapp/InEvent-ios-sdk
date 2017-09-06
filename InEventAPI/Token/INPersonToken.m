//
//  INPersonToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INPersonToken.h"

@implementation INPersonToken

#pragma mark - Singleton

+ (INPersonToken *)sharedInstance
{
    static INPersonToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INPersonToken alloc] init];
        // Load the data that is already stored
        [sharedInstance setAllowedKeys:@[@"tokenID", @"personID"]];
        
        // personID should always be a string
        if ([[sharedInstance objectForKey:@"personID"] isKindOfClass:[NSNumber class]]) {
            [sharedInstance setObject:nil forKey:@"personID"];
        }
    });
    return sharedInstance;
}

#pragma mark - User Methods

- (BOOL)isAuthenticated {
    if ([self objectForKey:@"tokenID"] != nil && [self objectForKey:@"personID"] != nil) {
        return YES;
    } else {
        return NO;
    }
}

- (void)resetData {
    // Remove all the data
    [super resetData];
}

@end
