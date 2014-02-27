//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventLinkedInAPIController.h"

@implementation InEventLinkedInAPIController

#pragma mark - LinkedIn

- (void)signInWithLinkedInToken:(NSString *)linkedInToken {
    
	if (linkedInToken != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken}};
        
		[self JSONObjectWithNamespace:@"linkedIn" method:@"signIn" attributes:attributes];
	}
}

- (void)updateAuthenticatingWithTokenID:(NSString *)tokenID withLinkedInToken:(NSString *)linkedInToken withSelection:(NSString *)selection {
    
	if (tokenID != nil && linkedInToken != nil && selection != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"linkedInToken" : linkedInToken, @"selection" : selection}};
        
		[self JSONObjectWithNamespace:@"linkedIn" method:@"update" attributes:attributes];
	}
}

- (void)generateAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"linkedIn" method:@"generate" attributes:attributes];
	}
}

@end