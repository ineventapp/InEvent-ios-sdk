//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventPersonAPIController : InEventAPIController

#pragma mark - Person
- (void)signInWithEmail:(NSString *)email withPassword:(NSString *)password;
- (void)signInWithLinkedInWithLinkedInToken:(NSString *)linkedInToken;
- (void)signInWithFacebookWithFacebookToken:(NSString *)facebookToken;
- (void)getDetailsAuthenticatingWithTokenID:(NSString *)tokenID;
- (void)getDetailsForPersonAuthenticatingWithTokenID:(NSString *)tokenID forPerson:(NSInteger)personID;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID withKey:(NSString *)key withValue:(NSString *)value;
- (void)enrollWithName:(NSString *)name withPassword:(NSString *)password withEmail:(NSString *)email;
- (void)sendRecoveryWithEmail:(NSString *)email;
- (void)subscribeAuthenticatingWithTokenID:(NSString *)tokenID withEmail:(NSString *)email;
- (void)unsubscribeAuthenticatingWithTokenID:(NSString *)tokenID withEmail:(NSString *)email;
- (void)changePasswordAuthenticatingWithTokenID:(NSString *)tokenID withOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword;

@end
