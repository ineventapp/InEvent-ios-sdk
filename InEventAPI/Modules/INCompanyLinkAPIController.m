#import "INCompanyLinkAPIController.h"

@implementation INCompanyLinkAPIController

#pragma mark - CompanyLink

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withTitle:(NSString *)title withLink:(NSString *)link {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && title != nil && link != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"title" : title, @"link" : link}};

		[self objectWithModule:@"company.link" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompanyLink:(NSInteger)companyLinkID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyLinkID" : [NSString stringWithFormat:@"%ld", (long)companyLinkID]}};

		[self objectWithModule:@"company.link" method:@"remove" attributes:attributes];
	}
}

- (void)findAtCompany:(NSInteger)companyID {



	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

	[self objectWithModule:@"company.link" method:@"find" attributes:attributes];
}

@end
