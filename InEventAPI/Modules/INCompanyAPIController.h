//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyAPIController : INAPIController

#pragma mark - Company
- (void)createAuthenticatedWithName:(NSString *)name withLocation:(NSString *)location;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticated;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;

@end