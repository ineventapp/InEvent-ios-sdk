//
//  INCompanyToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INCompanyToken.h"
#import "CompanyMacro.h"

@implementation INCompanyToken

#pragma mark - Singleton

+ (INCompanyToken *)sharedInstance
{
    static INCompanyToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INCompanyToken alloc] init];
        // Load the data that is already stored
        [sharedInstance setAllowedKeys:@[@"companyID", @"shortName", @"storeTitle", @"backgroundColor", @"navigationBarBackgroundColor", @"mainColor", @"bundle", @"language", @"agreement", @"initialDemo", @"generic"]];
        
        // Save default value
        BOOL generic = NO;
        
#ifdef FASTLANE_SNAPSHOT
        generic = NO;
#else
        generic = [APP_GENERIC boolValue];
#endif
        
        // Load default values
        if (!generic) {
            [sharedInstance setObject:@([APP_COMPANYID integerValue]) forKey:@"companyID"];
            [sharedInstance setObject:APP_SHORTNAME forKey:@"shortName"];
            [sharedInstance setObject:APP_STOREICON forKey:@"storeTitle"];
            [sharedInstance setObject:APP_BACKGROUNDCOLOR forKey:@"backgroundColor"];
            [sharedInstance setObject:APP_NAVIGATIONBARBACKGROUNDCOLOR forKey:@"navigationBarBackgroundColor"];
            [sharedInstance setObject:APP_MAINCOLOR forKey:@"mainColor"];
            [sharedInstance setObject:APP_BUNDLE forKey:@"bundle"];
            [sharedInstance setObject:APP_LANGUAGE forKey:@"language"];
            [sharedInstance setObject:APP_AGREEMENT forKey:@"agreement"];
            [sharedInstance setObject:@([APP_INITIALDEMO boolValue]) forKey:@"initialDemo"];
            [sharedInstance setObject:@([APP_GENERIC boolValue]) forKey:@"generic"];
        }
        
    });
    return sharedInstance;
}

#pragma mark - Public Methods

- (BOOL)isSelected {
    if ([[self objectForKey:@"companyID"] integerValue] != 0) {
        return YES;
    } else {
        return NO;
    }
}

@end
