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
        [sharedInstance setAllowedKeys:@[@"tokenID",
                                         @"personID",
                                         @"approved",
                                         @"role",
                                         @"name"]];
        
        // Set approved as default value
        if ([sharedInstance objectForKey:@"approved"] == nil) [sharedInstance setObject:@(-1) forKey:@"approved"];
    });
    return sharedInstance;
}

#pragma mark - User Methods

- (BOOL)isPersonAuthenticated {
    if ([self objectForKey:@"tokenID"] != nil && [self objectForKey:@"personID"] != nil) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isPersonApproved {
    if ([self isPersonAuthenticated]) {
        if ((INPersonState)[[self objectForKey:@"approved"] integerValue] == INPersonStateApproved) {
            return YES;
        } else {
            return NO;
        }
    } else {
        return NO;
    }
}

- (BOOL)isPersonWorking {
    if ([self isPersonAuthenticated]) {
        if ((INPersonPermission)[[self objectForKey:@"role"] integerValue] & INPersonPermissionWorking) {
            return YES;
        } else {
            return NO;
        }
    } else {
        return NO;
    }
}

- (void)removePerson {
    [self resetData];
    [self setObject:@(-1) forKey:@"approved"];
}

@end
