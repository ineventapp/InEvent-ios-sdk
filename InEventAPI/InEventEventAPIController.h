//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventEventAPIController : InEventAPIController

#pragma mark - Event
- (void)createAuthenticatingWithTokenID:(NSString *)tokenID withName:(NSString *)name withNickname:(NSString *)nickname;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withKey:(NSString *)key withValue:(NSString *)value;
- (void)operateAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withAction:(NSString *)action withKey:(NSString *)key withValue:(NSString *)value;
- (void)getEventsWithName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)getEventsForPersonAuthenticatingWithTokenID:(NSString *)tokenID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)getSingleAtEvent:(NSInteger)eventID;
- (void)getSingleForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)enlistExhibitorAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name withEmail:(NSString *)email;
- (void)dismissExhibitorAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forExhibitor:(NSInteger)exhibitorID;
- (void)enrollAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)enrollPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name withEmail:(NSString *)email;
- (void)enrollPeopleAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withPath:(NSString *)path;
- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID;
- (void)confirmEntranceAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)confirmEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID;
- (void)revokeEntranceAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)revokeEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID;
- (void)grantPermissionForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID;
- (void)revokePermissionForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID;
- (void)getExhibitorsAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)sendMailAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)getFlowForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)getActivitiesAtEvent:(NSInteger)eventID;
- (void)getActivitiesForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)getGroupsAtEvent:(NSInteger)eventID;
- (void)getGroupsForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)getOpinionAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)sendOpinionAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withRating:(NSString *)rating withMessage:(NSString *)message;

@end