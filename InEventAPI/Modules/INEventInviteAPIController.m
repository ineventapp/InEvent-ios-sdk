#import "INEventInviteAPIController.h"

@implementation INEventInviteAPIController

#pragma mark - EventInvite

- (void)createAuthenticatedAtEventWithEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"email" : email}};

		[self objectWithModule:@"event.invite" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"event.invite" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.invite" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.invite" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil && sort != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query, @"sort" : sort, @"order" : order}};

		[self objectWithModule:@"event.invite" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.invite" method:@"get" attributes:attributes];
	}
}

- (void)getAtEventWithEmail:(NSString *)email withTracking:(NSString *)tracking {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && email != nil && tracking != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"email" : email, @"tracking" : tracking}};

		[self objectWithModule:@"event.invite" method:@"get" attributes:attributes];
	}
}

- (void)rsvpAuthenticatedAtEventWithEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"email" : email}};

		[self objectWithModule:@"event.invite" method:@"rsvp" attributes:attributes];
	}
}

- (void)rsvpAtEventWithEmail:(NSString *)email {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"email" : email}};

		[self objectWithModule:@"event.invite" method:@"rsvp" attributes:attributes];
	}
}

@end
