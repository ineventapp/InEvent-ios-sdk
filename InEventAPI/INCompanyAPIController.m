//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INCompanyAPIController.h"

@implementation INCompanyAPIController

#pragma mark - Company

- (void)createAuthenticatedWithName:(NSString *)name withLocation:(NSString *)location {
    
	if (name != nil && location != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, }};
        
		[self JSONObjectWithModule:@"company" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithModule:@"company" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID {
    
	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}};
    
	[self JSONObjectWithModule:@"company" method:@"remove" attributes:attributes];
}

- (void)findAuthenticated {
    
	NSDictionary *attributes = @{@"GET" : @{}};
    
	[self JSONObjectWithModule:@"company" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {
    
	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}};
    
	[self JSONObjectWithModule:@"company" method:@"get" attributes:attributes];
}

@end