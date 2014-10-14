#import "INTicketAPIController.h"

@implementation INTicketAPIController

#pragma mark - Ticket

- (void)createAuthenticatedAtEventWithName:(NSString *)name {

	if (name != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name}};

		[self JSONObjectWithModule:@"ticket" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTicket:(NSInteger)ticketID withKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"ticketID" : [NSString stringWithFormat:@"%d", ticketID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"ticket" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTicket:(NSInteger)ticketID {

	NSDictionary *attributes = @{@"GET" : @{@"ticketID" : [NSString stringWithFormat:@"%d", ticketID]}};

	[self JSONObjectWithModule:@"ticket" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"ticket" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtTicket:(NSInteger)ticketID {

	NSDictionary *attributes = @{@"GET" : @{@"ticketID" : [NSString stringWithFormat:@"%d", ticketID]}};

	[self JSONObjectWithModule:@"ticket" method:@"get" attributes:attributes];
}

@end