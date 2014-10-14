//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INErrorAPIController : INAPIController

#pragma mark - Error
- (void)createAuthenticatedWithPlatform:(NSString *)platform withMessage:(NSString *)message;
- (void)createWithPlatform:(NSString *)platform withMessage:(NSString *)message;

@end