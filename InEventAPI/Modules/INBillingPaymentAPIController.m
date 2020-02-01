#import "INBillingPaymentAPIController.h"

@implementation INBillingPaymentAPIController

#pragma mark - BillingPayment

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"billing.payment" method:@"create" attributes:attributes];
	}
}

@end
