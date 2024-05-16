#import "INFormTicketAPIController.h"

@implementation INFormTicketAPIController

#pragma mark - FormTicket

- (void)bindAuthenticatedAtTicket:(NSInteger)ticketID atForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"form.ticket" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTicket:(NSInteger)ticketID atForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"form.ticket" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"form.ticket" method:@"find" attributes:attributes];
	}
}

@end
