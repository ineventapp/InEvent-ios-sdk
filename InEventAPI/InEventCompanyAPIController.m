//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventCompanyAPIController.h"

@implementation InEventCompanyAPIController

#pragma mark - Company

- (void)getDetailsAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID]}};
        
		[self JSONObjectWithNamespace:@"company" method:@"getDetails" attributes:attributes];
	}
}

- (void)createAuthenticatingWithTokenID:(NSString *)tokenID withName:(NSString *)name {
    
	if (tokenID != nil && name != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"name" : name}};
        
		[self JSONObjectWithNamespace:@"company" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"company" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID]}};
        
		[self JSONObjectWithNamespace:@"company" method:@"remove" attributes:attributes];
	}
}

- (void)renewAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID]}};
        
		[self JSONObjectWithNamespace:@"company" method:@"renew" attributes:attributes];
	}
}

- (void)addPersonAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withName:(NSString *)name withEmail:(NSString *)email {
    
	if (tokenID != nil && name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"name" : name, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"company" method:@"addPerson" attributes:attributes];
	}
}

- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"company" method:@"dismissPerson" attributes:attributes];
	}
}

- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withSelection:(NSString *)selection withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID], @"selection" : selection, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"company" method:@"getPeople" attributes:attributes];
	}
}

- (void)addEventAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname {
    
	if (tokenID != nil && name != nil && nickname != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"name" : name, @"nickname" : nickname}};
        
		[self JSONObjectWithNamespace:@"company" method:@"addEvent" attributes:attributes];
	}
}

- (void)getEventsAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {
    
	if (name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"company" method:@"getEvents" attributes:attributes];
	}
}

- (void)getEventsForPersonAuthenticatingWithTokenID:(NSString *)tokenID atCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%d", companyID], @"selection" : selection, @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"company" method:@"getEventsForPerson" attributes:attributes];
	}
}

@end