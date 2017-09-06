//
//  INEventPersonToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2016 Pedro Góes. All rights reserved.
//

#import "INEventPersonToken.h"

@implementation INEventPersonToken

#pragma mark - Singleton

+ (INEventPersonToken *)sharedInstance
{
    static INEventPersonToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INEventPersonToken alloc] init];
        // Load the data that is already stored
        [sharedInstance setAllowedKeys:@[@"personName", @"role", @"company", @"headline", @"isSponsor", @"approved", @"present", @"level", @"qrCode"]];
        
        // Set our default values
        if ([sharedInstance objectForKey:@"approved"] == nil) [sharedInstance setObject:@(INPersonStateUnknown) forKey:@"approved"];
        if ([sharedInstance objectForKey:@"level"] == nil) [sharedInstance setObject:@(INPersonLevelUnknown) forKey:@"level"];
    });
    return sharedInstance;
}

#pragma mark - Public Methods

- (BOOL)isWorking {
    if ([[INPersonToken sharedInstance] isAuthenticated]) {
        if ((INPersonPermission)[[self objectForKey:@"level"] integerValue] & INPersonPermissionWorking) {
            return YES;
        } else {
            return NO;
        }
    } else {
        return NO;
    }
}

- (void)updateValuesWithDictionary:(NSDictionary *)dictionary {
    
    BOOL didChangeKey = NO;
    
    // Update all values based on dictionary
    NSDictionary *mapped = @{
                             @"INEventToken" : @[@"eventID", @"name", @"nickname", @"public"],
                             @"INEventPersonToken" : @[@"personName", @"role", @"company", @"headline", @"isSponsor", @"approved", @"present", @"level", @"qrCode"]
                             };

    
    for (id instance in @[self, [INEventToken sharedInstance]]) {
        for (NSString *key in [mapped objectForKey:NSStringFromClass([instance class])]) {
            if ([dictionary objectForKey:key]) {
                if (![[instance objectForKey:key] isEqual:[dictionary objectForKey:key]]) {
                    didChangeKey = YES;
                }
                [instance setObject:[dictionary objectForKey:key] forKey:key];
            }
        }
    }
    
    // Update the current state of controllers
    if (didChangeKey) [[NSNotificationCenter defaultCenter] postNotificationName:@"eventStateNotification" object:nil userInfo:nil];
}

- (NSString *)stringByTransformingTokenizedString:(NSString *)raw {
    
    // {{name}}, {{role}}, {{company}}, {{headline}}
    raw = [raw stringByReplacingOccurrencesOfString:@"{{name}}" withString:[[INEventPersonToken sharedInstance] objectForKey:@"personName"] ?: @""];
    raw = [raw stringByReplacingOccurrencesOfString:@"{{role}}" withString:[[INEventPersonToken sharedInstance] objectForKey:@"role"] ?: @""];
    raw = [raw stringByReplacingOccurrencesOfString:@"{{company}}" withString:[[INEventPersonToken sharedInstance] objectForKey:@"company"] ?: @""];
    raw = [raw stringByReplacingOccurrencesOfString:@"{{headline}}" withString:[[INEventPersonToken sharedInstance] objectForKey:@"headline"] ?: @""];
    
    return raw;
}

@end
