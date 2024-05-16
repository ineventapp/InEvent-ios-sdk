#import "INCompanySlideAPIController.h"

@implementation INCompanySlideAPIController

#pragma mark - CompanySlide

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withAddress:(NSString *)address withQuarter:(NSString *)quarter withYear:(NSString *)year {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && address != nil && quarter != nil && year != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"address" : address, @"quarter" : quarter, @"year" : year}};

		[self objectWithModule:@"company.slide" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompanySlide:(NSInteger)companySlideID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companySlideID" : [NSString stringWithFormat:@"%ld", (long)companySlideID]}};

		[self objectWithModule:@"company.slide" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company.slide" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompanySlide:(NSInteger)companySlideID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companySlideID" : [NSString stringWithFormat:@"%ld", (long)companySlideID]}};

		[self objectWithModule:@"company.slide" method:@"get" attributes:attributes];
	}
}

@end
