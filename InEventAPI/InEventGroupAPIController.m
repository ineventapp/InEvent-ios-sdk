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

- (void)createGroupAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"create" attributes:attributes];
    }
}

- (void)editField:(NSString *)name withValue:(NSString *)value atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil && name != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}, @"POST": @{@"value" : value}};
        
        [self JSONObjectWithNamespace:@"group" method:@"edit" attributes:attributes];
    }
}

- (void)removeGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"remove" attributes:attributes];
    }
}

- (void)requestEnrollmentAtGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"requestEnrollment" attributes:attributes];
    }
}

- (void)requestEnrollmentForPersonWithName:(NSString *)name andEmail:(NSString *)email atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"name" : name, @"email" : email}};
        
        [self JSONObjectWithNamespace:@"group" method:@"requestEnrollment" attributes:attributes];
    }
}

- (void)dismissEnrollmentAtGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"dismissEnrollment" attributes:attributes];
    }
}

- (void)dismissEnrollmentForPerson:(NSInteger)personID atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"dismissEnrollment" attributes:attributes];
    }
}

- (void)confirmEntranceForPerson:(NSInteger)personID atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {
   
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"confirmEntrance" attributes:attributes];
    }
}

- (void)revokeEntranceForPerson:(NSInteger)personID atGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"group" method:@"revokeEntrance" attributes:attributes];
    }
}

- (void)getPeopleAtGroup:(NSInteger)groupID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"groupID" : [NSString stringWithFormat:@"%d", groupID], @"selection" : @"all"}};
        
        [self JSONObjectWithNamespace:@"group" method:@"getPeople" attributes:attributes];
    }
}

@end
