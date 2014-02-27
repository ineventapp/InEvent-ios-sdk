//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventCompanyAPIController : InEventAPIController

#pragma mark - Company
- (void)getDetailsAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID;
- (void)createAuthenticatingWithTokenID:(NSString *)tokenID withName:(NSString *)name;
- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID;
- (void)renewAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID;
- (void)addPersonAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withName:(NSString *)name withEmail:(NSString *)email;
- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID forPerson:(NSInteger)personID;
- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)addEventAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname;
- (void)getEventsAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)getEventsForPersonAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;

@end