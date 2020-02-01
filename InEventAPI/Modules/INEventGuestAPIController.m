#import "INEventGuestAPIController.h"

@implementation INEventGuestAPIController

#pragma mark - EventGuest

- (void)bindAuthenticatedAtEventAtHost:(NSInteger)hostID withName:(NSString *)name withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID]}, @"POST" : @{@"name" : name, @"email" : email}};

		[self objectWithModule:@"event.guest" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithName:(NSString *)name withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"email" : email}};

		[self objectWithModule:@"event.guest" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.guest" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"event.guest" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID]}};

		[self objectWithModule:@"event.guest" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && paginated != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paginated" : paginated, @"query" : query}};

		[self objectWithModule:@"event.guest" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID]}};

		[self objectWithModule:@"event.guest" method:@"get" attributes:attributes];
	}
}

@end
