#import "INTicketBatchAPIController.h"

@implementation INTicketBatchAPIController

#pragma mark - TicketBatch

- (void)createAuthenticatedAtTicket:(NSInteger)ticketID withPrice:(NSString *)price {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && price != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID]}, @"POST" : @{@"price" : price}};

		[self objectWithModule:@"ticket.batch" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTicketBatch:(NSInteger)ticketBatchID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketBatchID" : [NSString stringWithFormat:@"%ld", (long)ticketBatchID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"ticket.batch" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTicketBatch:(NSInteger)ticketBatchID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketBatchID" : [NSString stringWithFormat:@"%ld", (long)ticketBatchID]}};

		[self objectWithModule:@"ticket.batch" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtTicket:(NSInteger)ticketID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"selection" : selection}};

		[self objectWithModule:@"ticket.batch" method:@"find" attributes:attributes];
	}
}

@end
