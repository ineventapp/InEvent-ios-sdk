//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INCompanyPersonAPIController.h"

@implementation INCompanyPersonAPIController

#pragma mark - CompanyPerson

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withEmail:(NSString *)email {
    
	if (name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"name" : name, }};
        
		[self JSONObjectWithModule:@"company.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {
    
	if (key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"key" : key, @"personID" : [NSString stringWithFormat:@"%d", personID]}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithModule:@"company.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID {
    
	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
    
	[self JSONObjectWithModule:@"company.person" method:@"dismiss" attributes:attributes];
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection {
    
	if (selection != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"selection" : selection}};
        
		[self JSONObjectWithModule:@"company.person" method:@"find" attributes:attributes];
	}
}

@end
