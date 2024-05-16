#import "INSsoAPIController.h"

@implementation INSsoAPIController

#pragma mark - Sso

- (void)editAuthenticatedAtSso:(NSInteger)ssoID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"ssoID" : [NSString stringWithFormat:@"%ld", (long)ssoID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"sso" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"sso" method:@"find" attributes:attributes];
	}
}

- (void)linkAccountAuthenticatedAtCompany:(NSInteger)companyID withIssuerURL:(NSString *)issuerURL withSingleSignOnService:(NSString *)singleSignOnService withSingleLogoutService:(NSString *)singleLogoutService withPrivateKeyCertificate:(NSString *)privateKeyCertificate {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && issuerURL != nil && singleSignOnService != nil && singleLogoutService != nil && privateKeyCertificate != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"issuerURL" : issuerURL, @"singleSignOnService" : singleSignOnService, @"singleLogoutService" : singleLogoutService, @"privateKeyCertificate" : privateKeyCertificate}};

		[self objectWithModule:@"sso" method:@"linkAccount" attributes:attributes];
	}
}

- (void)unlinkAccountAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"sso" method:@"unlinkAccount" attributes:attributes];
	}
}

@end
