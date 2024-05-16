#import "INAppPersonAPIController.h"

@implementation INAppPersonAPIController

#pragma mark - AppPerson

- (void)bindAuthenticatedAtApp:(NSInteger)appID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appID" : [NSString stringWithFormat:@"%ld", (long)appID]}};

		[self objectWithModule:@"app.person" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtApp:(NSInteger)appID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appID" : [NSString stringWithFormat:@"%ld", (long)appID]}};

		[self objectWithModule:@"app.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"app.person" method:@"find" attributes:attributes];
	}
}

@end
