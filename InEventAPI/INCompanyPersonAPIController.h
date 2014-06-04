//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPersonAPIController : INAPIController

#pragma mark - CompanyPerson
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withEmail:(NSString *)email;
- (void)operateAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection;

@end