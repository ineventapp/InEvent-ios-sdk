#import "INCouponAPIController.h"

@implementation INCouponAPIController

#pragma mark - Coupon

- (void)createAuthenticatedWithCode:(NSString *)code withFeature:(NSString *)feature withDiscount:(NSString *)discount {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && code != nil && feature != nil && discount != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"code" : code, @"feature" : feature, @"discount" : discount}};

		[self objectWithModule:@"coupon" method:@"create" attributes:attributes];
	}
}

- (void)getWithCode:(NSString *)code {


	if (code != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"code" : code}};

		[self objectWithModule:@"coupon" method:@"get" attributes:attributes];
	}
}

@end