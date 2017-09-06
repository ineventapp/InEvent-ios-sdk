//
//  INCompanyToolToken.m
//  InEvent
//
//  Created by Pedro Góes on 18/06/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "INCompanyToolToken.h"

@implementation INCompanyToolToken

#pragma mark - Singleton

+ (INCompanyToolToken *)sharedInstance
{
    static INCompanyToolToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INCompanyToolToken alloc] init];
    });
    return sharedInstance;
}

#pragma mark - Public Methods

- (void)overwriteWithDictionary:(NSDictionary *)dictionary {
    
    // Overwrite default keys
    NSArray *keys = [dictionary allKeys];
    [self setAllowedKeys:keys];
    
    // Rebuild values
    for (NSString *key in keys) {
        [self setObject:[dictionary objectForKey:key] forKey:key];
    }
}

@end
