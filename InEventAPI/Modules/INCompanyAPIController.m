#import "INCompanyAPIController.h"

@implementation INCompanyAPIController

#pragma mark - Company

- (void)createAuthenticatedWithShortName:(NSString *)shortName withStoreTitle:(NSString *)storeTitle {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && shortName != nil && storeTitle != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"shortName" : shortName, @"storeTitle" : storeTitle}};

		[self JSONObjectWithModule:@"company" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"company" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self JSONObjectWithModule:@"company" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};

		[self JSONObjectWithModule:@"company" method:@"find" attributes:attributes];
	}
}

- (void)getAtCompany:(NSInteger)companyID {



	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

	[self JSONObjectWithModule:@"company" method:@"get" attributes:attributes];
}

@end