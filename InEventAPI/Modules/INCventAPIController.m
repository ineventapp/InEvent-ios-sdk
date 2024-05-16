#import "INCventAPIController.h"

@implementation INCventAPIController

#pragma mark - Cvent

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withClientId:(NSString *)clientId withClientSecret:(NSString *)clientSecret withEnvironment:(NSString *)environment {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && clientId != nil && clientSecret != nil && environment != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"clientId" : clientId, @"clientSecret" : clientSecret, @"environment" : environment}};

		[self objectWithModule:@"cvent" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"cvent" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"cvent" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"cvent" method:@"get" attributes:attributes];
	}
}

@end
