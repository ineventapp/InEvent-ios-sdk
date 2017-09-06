#import "INCompanyTabAPIController.h"

@implementation INCompanyTabAPIController

#pragma mark - CompanyTab

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withTab:(NSString *)tab withLanguage:(NSString *)language withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && tab != nil && language != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"tab" : tab, @"language" : language}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"company.tab" method:@"edit" attributes:attributes];
	}
}

- (void)getAtCompany:(NSInteger)companyID {



	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

	[self objectWithModule:@"company.tab" method:@"get" attributes:attributes];
}

@end