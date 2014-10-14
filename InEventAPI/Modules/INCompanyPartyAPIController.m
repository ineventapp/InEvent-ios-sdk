//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INCompanyPartyAPIController.h"

@implementation INCompanyPartyAPIController

#pragma mark - CompanyParty

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withLocation:(NSString *)location {
    
	if (name != nil && location != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"name" : name, }};
        
		[self JSONObjectWithModule:@"company.party" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID atParty:(NSInteger)partyID {
    
	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"partyID" : [NSString stringWithFormat:@"%d", partyID]}};
    
	[self JSONObjectWithModule:@"company.party" method:@"dismiss" attributes:attributes];
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection {
    
	if (selection != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"selection" : selection}};
        
		[self JSONObjectWithModule:@"company.party" method:@"find" attributes:attributes];
	}
}

@end
