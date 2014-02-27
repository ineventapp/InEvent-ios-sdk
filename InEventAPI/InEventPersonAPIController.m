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

- (void)signInWithEmail:(NSString *)email withPassword:(NSString *)password {
    
	if (email != nil && password != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"email" : email, @"password" : password}};
        
		[self JSONObjectWithNamespace:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)signInWithLinkedInWithLinkedInToken:(NSString *)linkedInToken {
    
	if (linkedInToken != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken}};
        
		[self JSONObjectWithNamespace:@"person" method:@"signInWithLinkedIn" attributes:attributes];
	}
}

- (void)signInWithFacebookWithFacebookToken:(NSString *)facebookToken {
    
	if (facebookToken != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken}};
        
		[self JSONObjectWithNamespace:@"person" method:@"signInWithFacebook" attributes:attributes];
	}
}

- (void)getDetailsAuthenticatingWithTokenID:(NSString *)tokenID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
        
		[self JSONObjectWithNamespace:@"person" method:@"getDetails" attributes:attributes];
	}
}

- (void)getDetailsForPersonAuthenticatingWithTokenID:(NSString *)tokenID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"person" method:@"getDetailsForPerson" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)enrollWithName:(NSString *)name withPassword:(NSString *)password withEmail:(NSString *)email {
    
	if (name != nil && password != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"password" : password, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"person" method:@"enroll" attributes:attributes];
	}
}

- (void)sendRecoveryWithEmail:(NSString *)email {
    
	if (email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"email" : email}};
        
		[self JSONObjectWithNamespace:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)subscribeAuthenticatingWithTokenID:(NSString *)tokenID withEmail:(NSString *)email {
    
	if (tokenID != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"person" method:@"subscribe" attributes:attributes];
	}
}

- (void)unsubscribeAuthenticatingWithTokenID:(NSString *)tokenID withEmail:(NSString *)email {
    
	if (tokenID != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"person" method:@"unsubscribe" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatingWithTokenID:(NSString *)tokenID withOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword {
    
	if (tokenID != nil && oldPassword != nil && newPassword != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"oldPassword" : oldPassword, @"newPassword" : newPassword}};
        
		[self JSONObjectWithNamespace:@"person" method:@"changePassword" attributes:attributes];
	}
}

@end