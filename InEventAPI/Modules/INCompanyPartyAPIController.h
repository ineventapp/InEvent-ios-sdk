//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPartyAPIController : INAPIController

#pragma mark - CompanyParty
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withLocation:(NSString *)location;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID atParty:(NSInteger)partyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection;

@end