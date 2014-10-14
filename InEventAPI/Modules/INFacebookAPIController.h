//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFacebookAPIController : INAPIController

#pragma mark - Facebook
- (void)signInWithFacebookToken:(NSString *)facebookToken;
- (void)updateAuthenticatedWithFacebookToken:(NSString *)facebookToken withSelection:(NSString *)selection;

@end