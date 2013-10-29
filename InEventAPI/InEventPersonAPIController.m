//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventPersonAPIController.h"

@implementation InEventPersonAPIController

#pragma mark - Person
- (void)signIn:(NSString *)email withPassword:(NSString *)password {
    
    if (email != nil && password != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"email" : email, @"password" : password}};
        
        [self JSONObjectWithNamespace:@"person" method:@"signIn" attributes:attributes];
    }
}

- (void)signInWithLinkedInToken:(NSString *)linkedInToken {
    
    if (linkedInToken != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken}};
        
        [self JSONObjectWithNamespace:@"person" method:@"signInWithLinkedIn" attributes:attributes];
    }
}

- (void)signInWithFacebookToken:(NSString *)facebookToken {
    
    if (facebookToken != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken}};
        
        [self JSONObjectWithNamespace:@"person" method:@"signInWithFacebook" attributes:attributes];
    }
}

- (void)getDetailsWithToken:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
        
        [self JSONObjectWithNamespace:@"person" method:@"getDetails" attributes:attributes];
    }
}

- (void)editField:(NSString *)name withValue:(NSString *)value withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil && name != nil && value != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name}, @"POST" : @{@"value" : value}};
        
        [self JSONObjectWithNamespace:@"person" method:@"edit" attributes:attributes];
    }
}

- (void)enroll:(NSString *)name withPassword:(NSString *)password withEmail:(NSString *)email {
    
    if (name != nil && password != nil && email != nil) {
        NSDictionary *attributes = @{@"POST" : @{@"name" : name, @"password" : password, @"email" : email}};
        
        [self JSONObjectWithNamespace:@"person" method:@"enroll" attributes:attributes];
    }
}

@end
