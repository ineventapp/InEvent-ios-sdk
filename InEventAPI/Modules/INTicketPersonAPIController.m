#import "INTicketPersonAPIController.h"

@implementation INTicketPersonAPIController

#pragma mark - TicketPerson

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"ticket.person" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"ticket.person" method:@"find" attributes:attributes];
	}
}

- (void)inviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID withImmediateFill:(NSString *)immediateFill withName:(NSString *)name withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && immediateFill != nil && name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}, @"POST" : @{@"immediateFill" : immediateFill, @"name" : name, @"email" : email}};

		[self objectWithModule:@"ticket.person" method:@"invite" attributes:attributes];
	}
}

- (void)acceptInviteAuthenticatedAtEventWithTicketToken:(NSString *)ticketToken {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && ticketToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"ticketToken" : ticketToken}};

		[self objectWithModule:@"ticket.person" method:@"acceptInvite" attributes:attributes];
	}
}

- (void)cancelInviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}};

		[self objectWithModule:@"ticket.person" method:@"cancelInvite" attributes:attributes];
	}
}

- (void)makeDefaultAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}};

		[self objectWithModule:@"ticket.person" method:@"makeDefault" attributes:attributes];
	}
}

- (void)undoDefaultAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}};

		[self objectWithModule:@"ticket.person" method:@"undoDefault" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}};

		[self objectWithModule:@"ticket.person" method:@"dismiss" attributes:attributes];
	}
}

@end
