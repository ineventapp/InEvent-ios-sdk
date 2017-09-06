#import "INCompanyPartyAPIController.h"

@implementation INCompanyPartyAPIController

#pragma mark - CompanyParty

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withShortName:(NSString *)shortName withStoreTitle:(NSString *)storeTitle {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && shortName != nil && storeTitle != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"shortName" : shortName, @"storeTitle" : storeTitle}};

		[self objectWithModule:@"company.party" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID atParty:(NSInteger)partyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"partyID" : [NSString stringWithFormat:@"%ld", (long)partyID]}};

		[self objectWithModule:@"company.party" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"order" : order}};

		[self objectWithModule:@"company.party" method:@"find" attributes:attributes];
	}
}

@end