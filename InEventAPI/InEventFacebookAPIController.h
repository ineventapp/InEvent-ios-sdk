//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventFacebookAPIController : InEventAPIController

#pragma mark - Facebook
- (void)signInWithFacebookToken:(NSString *)facebookToken;
- (void)updateAuthenticatingWithTokenID:(NSString *)tokenID withFacebookToken:(NSString *)facebookToken withSelection:(NSString *)selection;

@end