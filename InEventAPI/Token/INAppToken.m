//
//  INAppToken.m
//  InEvent
//
//  Created by Pedro Góes on 18/06/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "INAppToken.h"

@implementation INAppToken

#pragma mark - Singleton

+ (INAppToken *)sharedInstance
{
    static INAppToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INAppToken alloc] init];
    });
    return sharedInstance;
}

#pragma mark - Public Methods

- (void)overwriteWithDictionary:(NSDictionary *)dictionary {
    
    // Overwrite default keys
    NSArray *keys = [dictionary allKeys];
    [self setAllowedKeys:keys];
    
    // Rebuild values
    for (int i = 0; i < [keys count]; i++) {
        [self setObject:[dictionary objectForKey:[keys objectAtIndex:i]] forKey:[keys objectAtIndex:i]];
    }
}

@end
