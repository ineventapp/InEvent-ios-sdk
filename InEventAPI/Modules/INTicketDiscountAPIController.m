#import "INTicketDiscountAPIController.h"

@implementation INTicketDiscountAPIController

#pragma mark - TicketDiscount

- (void)bindAuthenticatedAtTicket:(NSInteger)ticketID withTickets:(NSString *)tickets withDiscount:(NSString *)discount {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && tickets != nil && discount != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}, @"POST" : @{@"tickets" : tickets, @"discount" : discount}};

		[self objectWithModule:@"ticket.discount" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTicketDiscount:(NSInteger)ticketDiscountID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketDiscountID" : [NSString stringWithFormat:@"%ld", (long)ticketDiscountID]}};

		[self objectWithModule:@"ticket.discount" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAtTicket:(NSInteger)ticketID {



	NSDictionary *attributes = @{@"GET" : @{@"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}};

	[self objectWithModule:@"ticket.discount" method:@"find" attributes:attributes];
}

@end
