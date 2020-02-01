#import "INProfilePermissionAPIController.h"

@implementation INProfilePermissionAPIController

#pragma mark - ProfilePermission

- (void)bindAuthenticatedAtProfile:(NSInteger)profileID withKey:(NSString *)key {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"profileID" : [NSString stringWithFormat:@"%ld", (long)profileID]}, @"POST" : @{@"key" : key}};

		[self objectWithModule:@"profile.permission" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtProfile:(NSInteger)profileID withKey:(NSString *)key {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"profileID" : [NSString stringWithFormat:@"%ld", (long)profileID], @"key" : key}};

		[self objectWithModule:@"profile.permission" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtProfile:(NSInteger)profileID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"profileID" : [NSString stringWithFormat:@"%ld", (long)profileID]}};

		[self objectWithModule:@"profile.permission" method:@"find" attributes:attributes];
	}
}

@end
