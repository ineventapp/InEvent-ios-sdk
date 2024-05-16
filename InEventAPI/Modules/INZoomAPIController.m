#import "INZoomAPIController.h"

@implementation INZoomAPIController

#pragma mark - Zoom

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"zoom" method:@"get" attributes:attributes];
	}
}

- (void)linkAccountAuthenticatedAtCompany:(NSInteger)companyID withApiKey:(NSString *)apiKey {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && apiKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"apiKey" : apiKey}};

		[self objectWithModule:@"zoom" method:@"linkAccount" attributes:attributes];
	}
}

- (void)unlinkAccountAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"zoom" method:@"unlinkAccount" attributes:attributes];
	}
}

@end
