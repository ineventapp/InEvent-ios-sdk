#import "INTicketSponsorAPIController.h"

@implementation INTicketSponsorAPIController

#pragma mark - TicketSponsor

- (void)createAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID atTicket:(NSInteger)ticketID withQuantity:(NSString *)quantity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && quantity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}, @"POST" : @{@"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"quantity" : quantity}};

		[self objectWithModule:@"ticket.sponsor" method:@"create" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtTicketSponsor:(NSInteger)ticketSponsorID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"ticketSponsorID" : [NSString stringWithFormat:@"%ld", (long)ticketSponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"ticket.sponsor" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtTicketSponsor:(NSInteger)ticketSponsorID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"ticketSponsorID" : [NSString stringWithFormat:@"%ld", (long)ticketSponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"ticket.sponsor" method:@"dismiss" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtTicketSponsor:(NSInteger)ticketSponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"ticketSponsorID" : [NSString stringWithFormat:@"%ld", (long)ticketSponsorID]}};

		[self objectWithModule:@"ticket.sponsor" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"ticket.sponsor" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"ticket.sponsor" method:@"get" attributes:attributes];
	}
}

@end
