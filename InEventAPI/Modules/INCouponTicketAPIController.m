#import "INCouponTicketAPIController.h"

@implementation INCouponTicketAPIController

#pragma mark - CouponTicket

- (void)bindAuthenticatedAtEventAtTicket:(NSInteger)ticketID atCoupon:(NSInteger)couponID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"couponID" : [NSString stringWithFormat:@"%ld", (long)couponID]}};

		[self objectWithModule:@"coupon.ticket" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtTicket:(NSInteger)ticketID atCoupon:(NSInteger)couponID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"ticketID" : [NSString stringWithFormat:@"%ld", (long)ticketID], @"couponID" : [NSString stringWithFormat:@"%ld", (long)couponID]}};

		[self objectWithModule:@"coupon.ticket" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtCoupon:(NSInteger)couponID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"couponID" : [NSString stringWithFormat:@"%ld", (long)couponID]}};

		[self objectWithModule:@"coupon.ticket" method:@"find" attributes:attributes];
	}
}

@end
