#import "INLandingAPIController.h"

@implementation INLandingAPIController

#pragma mark - Landing

- (void)createAuthenticatedAtEventWithName:(NSString *)name withCname:(NSString *)cname {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && cname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"cname" : cname}};

		[self objectWithModule:@"landing" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtLanding:(NSInteger)landingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"landing" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLanding:(NSInteger)landingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID]}};

		[self objectWithModule:@"landing" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"landing" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtLanding:(NSInteger)landingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID]}};

		[self objectWithModule:@"landing" method:@"get" attributes:attributes];
	}
}

- (void)putAuthenticatedAtLanding:(NSInteger)landingID withFile:(NSString *)file withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && file != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID]}, @"POST" : @{@"file" : file, @"url" : url}};

		[self objectWithModule:@"landing" method:@"put" attributes:attributes];
	}
}

- (void)deleteAuthenticatedAtLanding:(NSInteger)landingID withFile:(NSString *)file {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && file != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"landingID" : [NSString stringWithFormat:@"%ld", (long)landingID]}, @"POST" : @{@"file" : file}};

		[self objectWithModule:@"landing" method:@"delete" attributes:attributes];
	}
}

@end
