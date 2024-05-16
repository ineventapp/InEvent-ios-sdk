#import "INSponsorInviteAPIController.h"

@implementation INSponsorInviteAPIController

#pragma mark - SponsorInvite

- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withUsername:(NSString *)username {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && username != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}, @"POST" : @{@"name" : name, @"username" : username}};

		[self objectWithModule:@"sponsor.invite" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID atList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"sponsor.invite" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"sponsor.invite" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withExhibitor:(NSString *)exhibitor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && exhibitor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}, @"POST" : @{@"exhibitor" : exhibitor}};

		[self objectWithModule:@"sponsor.invite" method:@"find" attributes:attributes];
	}
}

@end
