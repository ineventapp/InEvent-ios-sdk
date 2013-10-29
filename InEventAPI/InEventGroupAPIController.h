//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventGroupAPIController : InEventAPIController

#pragma mark - Group
- (void)createGroupAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)editField:(NSString *)name withValue:(NSString *)value atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)removeGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)requestEnrollmentAtGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)requestEnrollmentForPersonWithName:(NSString *)name andEmail:(NSString *)email atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)dismissEnrollmentAtGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)dismissEnrollmentForPerson:(NSInteger)personID atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)confirmEntranceForPerson:(NSInteger)personID atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)revokeEntranceForPerson:(NSInteger)personID atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;
- (void)getPeopleAtGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID;

@end
