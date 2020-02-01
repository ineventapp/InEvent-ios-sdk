#import "INCompanyPushAPIController.h"

@implementation INCompanyPushAPIController

#pragma mark - CompanyPush

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withAndroidKey:(NSString *)androidKey withIosPath:(NSString *)iosPath {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && androidKey != nil && iosPath != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"androidKey" : androidKey, @"iosPath" : iosPath}};

		[self objectWithModule:@"company.push" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company.push" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company.push" method:@"find" attributes:attributes];
	}
}

@end
