//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventEventAPIController.h"

@implementation InEventEventAPIController

#pragma mark - Event

- (void)editField:(NSString *)name withValue:(NSString *)value atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil && name != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST": @{@"value" : value}};
        
        [self JSONObjectWithNamespace:@"event" method:@"edit" attributes:attributes];
    }
}

- (void)getEvents {
    [self JSONObjectWithNamespace:@"event" method:@"getEvents" attributes:@{}];
}

- (void)getEventsWithTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
        
        [self JSONObjectWithNamespace:@"event" method:@"getEvents" attributes:attributes];
    }
}

- (void)getSingleEvent:(NSInteger)eventID {
    
    NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
    [self JSONObjectWithNamespace:@"event" method:@"getSingle" attributes:attributes];
}

- (void)getSingleEvent:(NSInteger)eventID WithTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"getSingle" attributes:attributes];
    }
}

- (void)requestEnrollmentAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"requestEnrollment" attributes:attributes];
    }
}

- (void)requestEnrollmentForPersonWithName:(NSString *)name andEmail:(NSString *)email atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"name" : name, @"email" : email}};
        
        [self JSONObjectWithNamespace:@"event" method:@"requestEnrollment" attributes:attributes];
    }
}

- (void)dismissEnrollmentAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
 
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"dismissEnrollment" attributes:attributes];
    }
}

- (void)dismissEnrollmentForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
  
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"dismissEnrollment" attributes:attributes];
    }
}

- (void)approveEnrollmentAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"approveEnrollment" attributes:attributes];
    }
}

- (void)approveEnrollmentForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"approveEnrollment" attributes:attributes];
    }
}

- (void)grantPermissionForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"grantPermission" attributes:attributes];
    }
}

- (void)revokePermissionForPerson:(NSInteger)personID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"revokePermission" attributes:attributes];
    }
}

- (void)getPeopleAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"selection" : @"all"}};
        
        [self JSONObjectWithNamespace:@"event" method:@"getPeople" attributes:attributes];
    }   
}

- (void)getActivitiesAtEvent:(NSInteger)eventID {

    NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
    [self JSONObjectWithNamespace:@"event" method:@"getActivities" attributes:attributes];
}

- (void)getActivitiesAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"getActivities" attributes:attributes];
    }
}

- (void)getGroupsAtEvent:(NSInteger)eventID {
    
    NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
    [self JSONObjectWithNamespace:@"event" method:@"getGroups" attributes:attributes];
}

- (void)getGroupsAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"getGroups" attributes:attributes];
    }
}

- (void)getOpinionFromEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"getOpinion" attributes:attributes];
    }
}

- (void)sendOpinionWithRating:(NSInteger)rating withMessage:(NSString *)message toEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil && message != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"message" : message, @"rating" : [NSString stringWithFormat:@"%d", rating]}};
        
        [self JSONObjectWithNamespace:@"event" method:@"sendOpinion" attributes:attributes];
    }
}

@end
