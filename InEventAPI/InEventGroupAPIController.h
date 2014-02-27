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
- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID;
- (void)enrollAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID;
- (void)enrollPersonAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID withName:(NSString *)name withEmail:(NSString *)email;
- (void)dismissAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID;
- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID;
- (void)confirmApprovalAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID;
- (void)revokeApprovalAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID;
- (void)confirmEntranceAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID;
- (void)revokeEntranceAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID;
- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID withSelection:(NSString *)selection withOrder:(NSString *)order;

@end
