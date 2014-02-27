//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventErrorAPIController.h"

@implementation InEventErrorAPIController

#pragma mark - Error

- (void)postAuthenticatingWithTokenID:(NSString *)tokenID withPlatform:(NSString *)platform withMessage:(NSString *)message {
    
	if (tokenID != nil && platform != nil && message != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"platform" : platform, @"message" : message}};
        
		[self JSONObjectWithNamespace:@"error" method:@"post" attributes:attributes];
	}
}

- (void)postAnonymousWithPlatform:(NSString *)platform withMessage:(NSString *)message {
    
	if (platform != nil && message != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"platform" : platform, @"message" : message}};
        
		[self JSONObjectWithNamespace:@"error" method:@"postAnonymous" attributes:attributes];
	}
}

@end
