//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INPersonAPIController.h"

@implementation INPersonAPIController

#pragma mark - Person

- (void)signInWithEmail:(NSString *)email withPassword:(NSString *)password {
    
	if (email != nil && password != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"email" : email, @"password" : password}};
        
		[self JSONObjectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)createWithName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password {
    
	if (name != nil && email != nil && password != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"email" : email, @"password" : password}};
        
		[self JSONObjectWithModule:@"person" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value {
    
	if (key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithModule:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticated {
    
	NSDictionary *attributes = @{@"GET" : @{}};
    
	[self JSONObjectWithModule:@"person" method:@"find" attributes:attributes];
}

- (void)findAuthenticatedForPerson:(NSInteger)personID {
    
	NSDictionary *attributes = @{@"GET" : @{@"personID" : [NSString stringWithFormat:@"%d", personID]}};
    
	[self JSONObjectWithModule:@"person" method:@"find" attributes:attributes];
}

- (void)sendRecoveryWithEmail:(NSString *)email {
    
	if (email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"email" : email}};
        
		[self JSONObjectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword {
    
	if (oldPassword != nil && newPassword != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"oldPassword" : oldPassword}, @"POST" : @{@"newPassword" : newPassword}};
        
		[self JSONObjectWithModule:@"person" method:@"changePassword" attributes:attributes];
	}
}

- (void)subscribeAuthenticatedWithEmail:(NSString *)email {
    
	if (email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"email" : email}};
        
		[self JSONObjectWithModule:@"person" method:@"subscribe" attributes:attributes];
	}
}

- (void)unsubscribeAuthenticatedWithEmail:(NSString *)email {
    
	if (email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"email" : email}};
        
		[self JSONObjectWithModule:@"person" method:@"unsubscribe" attributes:attributes];
	}
}

@end