#import "INPaygovOfficeAPIController.h"

@implementation INPaygovOfficeAPIController

#pragma mark - PaygovOffice

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withOriginatingOffice:(NSString *)originatingOffice withOrganizationCode:(NSString *)organizationCode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && originatingOffice != nil && organizationCode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"originatingOffice" : originatingOffice, @"organizationCode" : organizationCode}};

		[self objectWithModule:@"paygov.office" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtPayGovOffice:(NSInteger)payGovOfficeID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"payGovOfficeID" : [NSString stringWithFormat:@"%ld", (long)payGovOfficeID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"paygov.office" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtPayGovOffice:(NSInteger)payGovOfficeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"payGovOfficeID" : [NSString stringWithFormat:@"%ld", (long)payGovOfficeID]}};

		[self objectWithModule:@"paygov.office" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"paygov.office" method:@"find" attributes:attributes];
	}
}

@end
