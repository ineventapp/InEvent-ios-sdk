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
- (void)signIn:(NSString *)email withPassword:(NSString *)password;
- (void)signInWithLinkedInToken:(NSString *)linkedInToken;
- (void)signInWithFacebookToken:(NSString *)facebookToken;
- (void)getDetailsWithToken:(NSString *)tokenID;
- (void)editField:(NSString *)name withValue:(NSString *)value withTokenID:(NSString *)tokenID;
- (void)enroll:(NSString *)name withPassword:(NSString *)password withEmail:(NSString *)email;

@end
