//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventMapAPIController : InEventAPIController

#pragma mark - Map
- (void)createItemAuthenticatingWithTokenID:(NSString *)tokenID atMap:(NSInteger)mapID withName:(NSString *)name;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atMap:(NSInteger)mapID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editItemAuthenticatingWithTokenID:(NSString *)tokenID atMapItem:(NSInteger)mapItemID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeItemAuthenticatingWithTokenID:(NSString *)tokenID atMapItem:(NSInteger)mapItemID;
- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;

@end