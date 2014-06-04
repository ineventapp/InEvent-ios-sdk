//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAllyAPIController : INAPIController

#pragma mark - Ally
- (void)createAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email;
- (void)createAuthenticatedForAlly:(NSInteger)allyID;
- (void)editAuthenticatedForAlly:(NSInteger)allyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedForAlly:(NSInteger)allyID;
- (void)findAuthenticatedWithSelection:(NSString *)selection;
- (void)writeMailAuthenticatedForAlly:(NSInteger)allyID;

@end