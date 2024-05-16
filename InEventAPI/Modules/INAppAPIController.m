#import "INAppAPIController.h"

@implementation INAppAPIController

#pragma mark - App

- (void)createAuthenticatedWithTitle:(NSString *)title {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && title != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"title" : title}};

		[self objectWithModule:@"app" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtApp:(NSInteger)appID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appID" : [NSString stringWithFormat:@"%ld", (long)appID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"app" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtApp:(NSInteger)appID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appID" : [NSString stringWithFormat:@"%ld", (long)appID]}};

		[self objectWithModule:@"app" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"app" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtApp:(NSInteger)appID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appID" : [NSString stringWithFormat:@"%ld", (long)appID]}};

		[self objectWithModule:@"app" method:@"get" attributes:attributes];
	}
}

@end
