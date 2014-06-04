//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INFacebookAPIController.h"

@implementation INFacebookAPIController

#pragma mark - Facebook

- (void)signInWithFacebookToken:(NSString *)facebookToken {
    
	if (facebookToken != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken}};
        
		[self JSONObjectWithModule:@"facebook" method:@"signIn" attributes:attributes];
	}
}

- (void)updateAuthenticatedWithFacebookToken:(NSString *)facebookToken withSelection:(NSString *)selection {
    
	if (facebookToken != nil && selection != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken, @"selection" : selection}};
        
		[self JSONObjectWithModule:@"facebook" method:@"update" attributes:attributes];
	}
}

@end