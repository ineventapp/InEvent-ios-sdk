#import "INSponsorPersonAPIController.h"

@implementation INSponsorPersonAPIController

#pragma mark - SponsorPerson

- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withUsername:(NSString *)username {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && username != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}, @"POST" : @{@"name" : name, @"username" : username}};

		[self objectWithModule:@"sponsor.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"sponsor.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID atList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"sponsor.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"sponsor.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"sponsor.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"sponsor.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withExhibitor:(NSString *)exhibitor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && exhibitor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}, @"POST" : @{@"exhibitor" : exhibitor}};

		[self objectWithModule:@"sponsor.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"sponsor.person" method:@"get" attributes:attributes];
	}
}

@end
