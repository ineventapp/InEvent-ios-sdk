//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventExhibitorAPIController : InEventAPIController

#pragma mark - Exhibitor
- (void)getDetailsAuthenticatingWithTokenID:(NSString *)tokenID;
- (void)getDetailsForExhibitorAuthenticatingWithTokenID:(NSString *)tokenID forExhibitor:(NSInteger)exhibitorID;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID withKey:(NSString *)key withValue:(NSString *)value;

@end
