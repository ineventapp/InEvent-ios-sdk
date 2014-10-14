//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INErrorAPIController.h"

@implementation INErrorAPIController

#pragma mark - Error

- (void)createAuthenticatedWithPlatform:(NSString *)platform withMessage:(NSString *)message {
    
	if (platform != nil && message != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"platform" : platform, }};
        
		[self JSONObjectWithModule:@"error" method:@"create" attributes:attributes];
	}
}

- (void)createWithPlatform:(NSString *)platform withMessage:(NSString *)message {
    
	if (platform != nil && message != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"platform" : platform, @"message" : message}};
        
		[self JSONObjectWithModule:@"error" method:@"create" attributes:attributes];
	}
}

@end