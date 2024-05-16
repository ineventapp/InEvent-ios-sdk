#import "INTeamAPIController.h"

@implementation INTeamAPIController

#pragma mark - Team

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withDescription:(NSString *)description withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && description != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"description" : description, @"path" : path}};

		[self objectWithModule:@"team" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTeam:(NSInteger)teamID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"team" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTeam:(NSInteger)teamID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID]}};

		[self objectWithModule:@"team" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"team" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTeam:(NSInteger)teamID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID]}};

		[self objectWithModule:@"team" method:@"get" attributes:attributes];
	}
}

@end
