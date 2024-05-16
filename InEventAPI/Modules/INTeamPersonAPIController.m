#import "INTeamPersonAPIController.h"

@implementation INTeamPersonAPIController

#pragma mark - TeamPerson

- (void)bindAuthenticatedAtTeam:(NSInteger)teamID forPerson:(NSInteger)personID withRole:(NSString *)role {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && role != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"role" : role}};

		[self objectWithModule:@"team.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtTeam:(NSInteger)teamID forPerson:(NSInteger)personID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"team.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTeam:(NSInteger)teamID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"team.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID atTeam:(NSInteger)teamID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"teamID" : [NSString stringWithFormat:@"%ld", (long)teamID]}};

		[self objectWithModule:@"team.person" method:@"find" attributes:attributes];
	}
}

@end
