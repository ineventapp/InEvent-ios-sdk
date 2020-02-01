#import "INVersionAPIController.h"

@implementation INVersionAPIController

#pragma mark - Version

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withPlatform:(NSString *)platform withVersion:(NSString *)version withBuild:(NSString *)build {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && platform != nil && version != nil && build != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"platform" : platform, @"version" : version, @"build" : build}};

		[self objectWithModule:@"version" method:@"create" attributes:attributes];
	}
}

- (void)getAtCompany:(NSInteger)companyID withPlatform:(NSString *)platform {


	if (platform != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"platform" : platform}};

		[self objectWithModule:@"version" method:@"get" attributes:attributes];
	}
}

@end
