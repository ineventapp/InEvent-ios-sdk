#import "INEventInviteAPIController.h"

@implementation INEventInviteAPIController

#pragma mark - EventInvite

- (void)createAuthenticatedAtEventWithValue:(NSString *)value withSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && value != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"value" : value, @"source" : source}};

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

- (void)removeAuthenticatedAtEventInvite:(NSInteger)eventInviteID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventInviteID" : [NSString stringWithFormat:@"%ld", (long)eventInviteID]}};

		[self objectWithModule:@"event.invite" method:@"remove" attributes:attributes];
	}
}

- (void)findAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && selection != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"selection" : selection, @"query" : query}};

		[self objectWithModule:@"event.invite" method:@"find" attributes:attributes];
	}
}

- (void)getAtEventWithValue:(NSString *)value {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"value" : value}};

		[self objectWithModule:@"event.invite" method:@"get" attributes:attributes];
	}
}

- (void)availableAtEventWithValue:(NSString *)value {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"value" : value}};

		[self objectWithModule:@"event.invite" method:@"available" attributes:attributes];
	}
}

@end