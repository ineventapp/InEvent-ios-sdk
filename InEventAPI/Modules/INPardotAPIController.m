#import "INPardotAPIController.h"

@implementation INPardotAPIController

#pragma mark - Pardot

- (void)isEnabledAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"pardot" method:@"isEnabled" attributes:attributes];
	}
}

- (void)listFormsAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"name" : name}};

		[self objectWithModule:@"pardot" method:@"listForms" attributes:attributes];
	}
}

@end
