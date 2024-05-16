#import "INCouponAPIController.h"

@implementation INCouponAPIController

#pragma mark - Coupon

- (void)createAuthenticatedAtEventWithDiscount:(NSString *)discount withCode:(NSString *)code {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && discount != nil && code != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"discount" : discount, @"code" : code}};

		[self objectWithModule:@"coupon" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query}};

		[self objectWithModule:@"coupon" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithCode:(NSString *)code {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && code != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"code" : code}};

		[self objectWithModule:@"coupon" method:@"get" attributes:attributes];
	}
}

@end
