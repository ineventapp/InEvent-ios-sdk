#import "INLandingPageAPIController.h"

@implementation INLandingPageAPIController

#pragma mark - LandingPage

- (void)bindAuthenticatedAtLanding:(NSInteger)landingID withPath:(NSString *)path withFile:(NSString *)file {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil && file != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID]}, @"POST" : @{@"path" : path, @"file" : file}};

		[self objectWithModule:@"landing.page" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtLandingPage:(NSInteger)landingPageID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingPageID" : [NSString stringWithFormat:@"%ld", (long)landingPageID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"landing.page" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtLandingPage:(NSInteger)landingPageID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingPageID" : [NSString stringWithFormat:@"%ld", (long)landingPageID]}};

		[self objectWithModule:@"landing.page" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLanding:(NSInteger)landingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID]}};

		[self objectWithModule:@"landing.page" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtLandingPage:(NSInteger)landingPageID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingPageID" : [NSString stringWithFormat:@"%ld", (long)landingPageID]}};

		[self objectWithModule:@"landing.page" method:@"get" attributes:attributes];
	}
}

@end
