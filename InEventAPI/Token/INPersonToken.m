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
                                         @"memberID",
                                         @"approved",
                                         @"role",
                                         @"name"]];
    });
    return sharedInstance;
}

#pragma mark - User Methods

- (BOOL)isMemberAuthenticated {
    if ([self objectForKey:@"tokenID"] != nil) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isMemberApproved {
    if ((INPersonState)[[self objectForKey:@"approved"] integerValue] == INPersonStateApproved) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isMemberWorking {
    if ((INPersonPermission)[[self objectForKey:@"role"] integerValue] & INPersonPermissionWorking) {
        return YES;
    } else {
        return NO;
    }
}

- (void)removeMember {
    [self resetData];
}

@end
