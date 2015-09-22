//
//  INEventToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INEventToken.h"
#import "CompanyMacro.h"

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
                                         @"nickname",
                                         @"public"]];
        
#ifdef APP_EVENTID
        // Load a default value
        if ([APP_EVENTID integerValue] != 0) [sharedInstance setObject:@([APP_EVENTID integerValue]) forKey:@"eventID"];
#endif
        
    });
    return sharedInstance;
}

#pragma mark - Public Methods

- (void)updateValuesWithDictionary:(NSDictionary *)dictionary {
    // Update all values based on dictionary
    if ([dictionary objectForKey:@"eventID"]) [[INEventToken sharedInstance] setObject:@([[dictionary objectForKey:@"eventID"] integerValue]) forKey:@"eventID"];
    
    if ([dictionary objectForKey:@"name"]) [[INEventToken sharedInstance] setObject:[dictionary objectForKey:@"name"] forKey:@"name"];
    
    if ([dictionary objectForKey:@"nickname"]) [[INEventToken sharedInstance] setObject:[dictionary objectForKey:@"nickname"] forKey:@"nickname"];
    
    if ([dictionary objectForKey:@"public"]) [[INEventToken sharedInstance] setObject:[dictionary objectForKey:@"public"] forKey:@"public"];
    
    if ([dictionary objectForKey:@"approved"]) [[INPersonToken sharedInstance] setObject:@((INPersonState)[[dictionary objectForKey:@"approved"] integerValue]) forKey:@"approved"];
    
    if ([dictionary objectForKey:@"roleID"]) [[INPersonToken sharedInstance] setObject:@((INPersonRole)[[dictionary objectForKey:@"roleID"] integerValue]) forKey:@"role"];
}

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
    
#ifdef APP_EVENTID
    // Rewrite our default value
    [self setObject:@([APP_EVENTID integerValue]) forKey:@"eventID"];
#endif
    
    // Notify about the enterprise removal
    [[NSNotificationCenter defaultCenter] postNotificationName:@"selectFirstController" object:nil];
}

@end
