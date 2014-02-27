//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventFacebookAPIController.h"

@implementation InEventFacebookAPIController

#pragma mark - Facebook

- (void)signInWithFacebookToken:(NSString *)facebookToken {
    
	if (facebookToken != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken}};
        
		[self JSONObjectWithNamespace:@"facebook" method:@"signIn" attributes:attributes];
	}
}

- (void)updateAuthenticatingWithTokenID:(NSString *)tokenID withFacebookToken:(NSString *)facebookToken withSelection:(NSString *)selection {
    
	if (tokenID != nil && facebookToken != nil && selection != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"facebookToken" : facebookToken, @"selection" : selection}};
        
		[self JSONObjectWithNamespace:@"facebook" method:@"update" attributes:attributes];
	}
}

@end