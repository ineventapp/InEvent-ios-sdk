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

- (void)createAuthenticatingWithTokenID:(NSString *)tokenID withName:(NSString *)name withNickname:(NSString *)nickname {
    
	if (tokenID != nil && name != nil && nickname != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"name" : name, @"nickname" : nickname}};
        
		[self JSONObjectWithNamespace:@"event" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"event" method:@"edit" attributes:attributes];
	}
}

- (void)operateAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withAction:(NSString *)action withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && action != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"action" : action, @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"event" method:@"operate" attributes:attributes];
	}
}

- (void)getEventsWithName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {
    
	if (name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getEvents" attributes:attributes];
	}
}

- (void)getEventsForPersonAuthenticatingWithTokenID:(NSString *)tokenID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"selection" : selection, @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getEventsForPerson" attributes:attributes];
	}
}

- (void)getSingleAtEvent:(NSInteger)eventID {
    
	NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
	[self JSONObjectWithNamespace:@"event" method:@"getSingle" attributes:attributes];
}

- (void)getSingleForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getSingleForPerson" attributes:attributes];
	}
}

- (void)enlistExhibitorAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name withEmail:(NSString *)email {
    
	if (tokenID != nil && name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"name" : name, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"event" method:@"enlistExhibitor" attributes:attributes];
	}
}

- (void)dismissExhibitorAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forExhibitor:(NSInteger)exhibitorID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"dismissExhibitor" attributes:attributes];
	}
}

- (void)enrollAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"enroll" attributes:attributes];
	}
}

- (void)enrollPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name withEmail:(NSString *)email {
    
	if (tokenID != nil && name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"name" : name, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"event" method:@"enrollPerson" attributes:attributes];
	}
}

- (void)enrollPeopleAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withPath:(NSString *)path {
    
	if (tokenID != nil && path != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"path" : path}};
        
		[self JSONObjectWithNamespace:@"event" method:@"enrollPeople" attributes:attributes];
	}
}

- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"dismissPerson" attributes:attributes];
	}
}

- (void)confirmEntranceAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"confirmEntrance" attributes:attributes];
	}
}

- (void)confirmEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"confirmEntranceForPerson" attributes:attributes];
	}
}

- (void)revokeEntranceAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"revokeEntrance" attributes:attributes];
	}
}

- (void)revokeEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"revokeEntranceForPerson" attributes:attributes];
	}
}

- (void)grantPermissionForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"grantPermissionForPerson" attributes:attributes];
	}
}

- (void)revokePermissionForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"revokePermissionForPerson" attributes:attributes];
	}
}

- (void)getExhibitorsAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withSelection:(NSString *)selection withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"selection" : selection, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getExhibitors" attributes:attributes];
	}
}

- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withSelection:(NSString *)selection withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"selection" : selection, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getPeople" attributes:attributes];
	}
}

- (void)sendMailAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withSelection:(NSString *)selection withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"selection" : selection, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"event" method:@"sendMail" attributes:attributes];
	}
}

- (void)getFlowForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getFlowForPerson" attributes:attributes];
	}
}

- (void)getActivitiesAtEvent:(NSInteger)eventID {
    
	NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
	[self JSONObjectWithNamespace:@"event" method:@"getActivities" attributes:attributes];
}

- (void)getActivitiesForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getActivitiesForPerson" attributes:attributes];
	}
}

- (void)getGroupsAtEvent:(NSInteger)eventID {
    
	NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
	[self JSONObjectWithNamespace:@"event" method:@"getGroups" attributes:attributes];
}

- (void)getGroupsForPersonAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getGroupsForPerson" attributes:attributes];
	}
}

- (void)getOpinionAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"event" method:@"getOpinion" attributes:attributes];
	}
}

- (void)sendOpinionAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withRating:(NSString *)rating withMessage:(NSString *)message {
    
	if (tokenID != nil && rating != nil && message != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"rating" : rating, @"message" : message}};
        
		[self JSONObjectWithNamespace:@"event" method:@"sendOpinion" attributes:attributes];
	}
}

@end