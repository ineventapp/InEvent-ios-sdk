#import "INProfilePersonAPIController.h"

@implementation INProfilePersonAPIController

#pragma mark - ProfilePerson

- (void)bindAuthenticatedAtProfile:(NSInteger)profileID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"profileID" : [NSString stringWithFormat:@"%ld", (long)profileID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"profile.person" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtProfile:(NSInteger)profileID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"profileID" : [NSString stringWithFormat:@"%ld", (long)profileID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"profile.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtProfile:(NSInteger)profileID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"profileID" : [NSString stringWithFormat:@"%ld", (long)profileID]}};

		[self objectWithModule:@"profile.person" method:@"find" attributes:attributes];
	}
}

@end
