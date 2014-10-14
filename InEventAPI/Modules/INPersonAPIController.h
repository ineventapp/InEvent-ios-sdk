//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonAPIController : INAPIController

#pragma mark - Person
- (void)signInWithEmail:(NSString *)email withPassword:(NSString *)password;
- (void)createWithName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password;
- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticated;
- (void)findAuthenticatedForPerson:(NSInteger)personID;
- (void)sendRecoveryWithEmail:(NSString *)email;
- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword;
- (void)subscribeAuthenticatedWithEmail:(NSString *)email;
- (void)unsubscribeAuthenticatedWithEmail:(NSString *)email;

@end