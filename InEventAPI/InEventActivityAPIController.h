//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventActivityAPIController : InEventAPIController

#pragma mark - Activity
- (void)createActivityAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)editField:(NSString *)name withValue:(NSString *)value atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)removeActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)requestEnrollmentAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)requestEnrollmentForPersonWithName:(NSString *)name andEmail:(NSString *)email atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)dismissEnrollmentAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)dismissEnrollmentForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)confirmEntranceForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)revokeEntranceForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)confirmPaymentForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)getPeopleAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)getQuestionsAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)sendQuestion:(NSString *)question toActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID;
- (void)removeQuestion:(NSInteger)questionID withTokenID:(NSString *)tokenID;
- (void)upvoteQuestion:(NSInteger)questionID withTokenID:(NSString *)tokenID;
- (void)getOpinionFromActivity:(NSInteger)activityID withToken:(NSString *)tokenID;
- (void)sendOpinionWithRating:(NSInteger)rating toActivity:(NSInteger)activityID withToken:(NSString *)tokenID;

@end
