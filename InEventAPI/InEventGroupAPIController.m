//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventGroupAPIController.h"

@implementation InEventGroupAPIController

#pragma mark - Group

- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name {
    
	if (tokenID != nil && name != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"name" : name}};
        
		[self JSONObjectWithNamespace:@"group" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"group" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"remove" attributes:attributes];
	}
}

- (void)enrollAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"enroll" attributes:attributes];
	}
}

- (void)enrollPersonAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID withName:(NSString *)name withEmail:(NSString *)email {
    
	if (tokenID != nil && name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"name" : name, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"group" method:@"enrollPerson" attributes:attributes];
	}
}

- (void)dismissAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"dismissPerson" attributes:attributes];
	}
}

- (void)confirmApprovalAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"confirmApproval" attributes:attributes];
	}
}

- (void)revokeApprovalAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"revokeApproval" attributes:attributes];
	}
}

- (void)confirmEntranceAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"confirmEntrance" attributes:attributes];
	}
}

- (void)revokeEntranceAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"group" method:@"revokeEntrance" attributes:attributes];
	}
}

- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atGroup:(NSInteger)groupID withSelection:(NSString *)selection withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"selection" : selection, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"group" method:@"getPeople" attributes:attributes];
	}
}

@end