//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventLinkedInAPIController : InEventAPIController

#pragma mark - LinkedIn
- (void)signInWithLinkedInToken:(NSString *)linkedInToken;
- (void)updateAuthenticatingWithTokenID:(NSString *)tokenID withLinkedInToken:(NSString *)linkedInToken withSelection:(NSString *)selection;
- (void)generateAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;

@end