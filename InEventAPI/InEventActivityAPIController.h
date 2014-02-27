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
- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)enrollAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)enrollPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withName:(NSString *)name withEmail:(NSString *)email;
- (void)enrollPeopleAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withPath:(NSString *)path;
- (void)dismissAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)confirmApprovalForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)revokeApprovalForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)confirmEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)revokeEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)confirmPaymentForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)revokePaymentForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)risePriorityAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)decreasePriorityAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)getMaterialsAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)sendMaterialAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withName:(NSString *)name withIcon:(NSString *)icon withUrl:(NSString *)url;
- (void)removeMaterialAuthenticatingWithTokenID:(NSString *)tokenID atMaterial:(NSInteger)materialID;
- (void)getQuestionsAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)sendQuestionAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withQuestion:(NSString *)question;
- (void)removeQuestionAuthenticatingWithTokenID:(NSString *)tokenID atQuestion:(NSInteger)questionID;
- (void)upvoteQuestionAuthenticatingWithTokenID:(NSString *)tokenID atQuestion:(NSInteger)questionID;
- (void)getOpinionAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID;
- (void)sendOpinionAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withRating:(NSString *)rating;
- (void)sendOpinionForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID withRating:(NSString *)rating;

@end