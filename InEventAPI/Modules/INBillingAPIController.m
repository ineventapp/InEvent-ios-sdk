#import "INBillingAPIController.h"

@implementation INBillingAPIController

#pragma mark - Billing

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"billing" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"billing" method:@"find" attributes:attributes];
	}
}

- (void)transferAuthenticatedAtCompany:(NSInteger)companyID atDestCompany:(NSInteger)destCompanyID withDestProduct:(NSString *)destProduct withDestAmount:(NSString *)destAmount {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && destProduct != nil && destAmount != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"destCompanyID" : [NSString stringWithFormat:@"%ld", (long)destCompanyID]}, @"POST" : @{@"destProduct" : destProduct, @"destAmount" : destAmount}};

		[self objectWithModule:@"billing" method:@"transfer" attributes:attributes];
	}
}

@end
