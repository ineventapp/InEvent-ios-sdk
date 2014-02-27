//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventErrorAPIController : InEventAPIController

#pragma mark - Error
- (void)postAuthenticatingWithTokenID:(NSString *)tokenID withPlatform:(NSString *)platform withMessage:(NSString *)message;
- (void)postAnonymousWithPlatform:(NSString *)platform withMessage:(NSString *)message;

@end
