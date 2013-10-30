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
- (void)editField:(NSString *)name withValue:(NSString *)value atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getEvents;
- (void)getEventsWithTokenID:(NSString *)tokenID;
- (void)getSingleEvent:(NSInteger)eventID;
- (void)getSingleEvent:(NSInteger)eventID WithTokenID:(NSString *)tokenID;
- (void)requestEnrollmentAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)requestEnrollmentForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)dismissEnrollmentAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)dismissEnrollmentForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)approveEnrollmentAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)approveEnrollmentForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)grantPermissionForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)revokePermissionForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getPeopleAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getActivitiesAtEvent:(NSInteger)eventID;
- (void)getActivitiesAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getGroupsAtEvent:(NSInteger)eventID;
- (void)getGroupsAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getOpinionFromEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)sendOpinionWithRating:(NSInteger)rating withMessage:(NSString *)message toEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;

@end
