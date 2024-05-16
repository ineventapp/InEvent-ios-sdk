#import "INTicketAPIController.h"

@implementation INTicketAPIController

#pragma mark - Ticket

- (void)createAuthenticatedAtEventWithName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name}};

		[self objectWithModule:@"ticket" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"ticket" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTicket:(NSInteger)ticketID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"ticket" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTicket:(NSInteger)ticketID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}};

		[self objectWithModule:@"ticket" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated atChain:(NSInteger)chainID withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && paginated != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paginated" : paginated, @"chainID" : [NSString stringWithFormat:@"%ld", (long)chainID], @"query" : query}};

		[self objectWithModule:@"ticket" method:@"find" attributes:attributes];
	}
}

- (void)findAtEvent {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self objectWithModule:@"ticket" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTicket:(NSInteger)ticketID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}};

		[self objectWithModule:@"ticket" method:@"get" attributes:attributes];
	}
}

- (void)payAuthenticatedAtEventWithContent:(NSString *)content withSession_nounce:(NSString *)session_nounce {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil && session_nounce != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content, @"session_nounce" : session_nounce}};

		[self objectWithModule:@"ticket" method:@"pay" attributes:attributes];
	}
}

- (void)lastBillingAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"ticket" method:@"lastBilling" attributes:attributes];
	}
}

@end
