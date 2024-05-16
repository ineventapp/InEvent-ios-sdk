#import "INTicketListAPIController.h"

@implementation INTicketListAPIController

#pragma mark - TicketList

- (void)bindAuthenticatedAtList:(NSInteger)listID atTicket:(NSInteger)ticketID withTrigger:(NSString *)trigger {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && trigger != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}, @"POST" : @{@"trigger" : trigger}};

		[self objectWithModule:@"ticket.list" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtList:(NSInteger)listID atTicket:(NSInteger)ticketID withTrigger:(NSString *)trigger {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && trigger != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}, @"POST" : @{@"trigger" : trigger}};

		[self objectWithModule:@"ticket.list" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtTicket:(NSInteger)ticketID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}};

		[self objectWithModule:@"ticket.list" method:@"find" attributes:attributes];
	}
}

@end
