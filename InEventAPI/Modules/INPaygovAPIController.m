#import "INPaygovAPIController.h"

@implementation INPaygovAPIController

#pragma mark - Paygov

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"paygov" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"paygov" method:@"get" attributes:attributes];
	}
}

- (void)verifyCredentialsAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"paygov" method:@"verifyCredentials" attributes:attributes];
	}
}

- (void)doRequestWithJwt:(NSString *)jwt {


	if (jwt != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"jwt" : jwt}};

		[self objectWithModule:@"paygov" method:@"doRequest" attributes:attributes];
	}
}

@end
