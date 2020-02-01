#import "INLodgingPersonAPIController.h"

@implementation INLodgingPersonAPIController

#pragma mark - LodgingPerson

- (void)bindAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtLodging:(NSInteger)lodgingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"lodging.person" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtLodging:(NSInteger)lodgingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"lodging.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging.person" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query}};

		[self objectWithModule:@"lodging.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"lodging.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"lodging.person" method:@"get" attributes:attributes];
	}
}

- (void)inviteAuthenticatedAtLodging:(NSInteger)lodgingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"lodging.person" method:@"invite" attributes:attributes];
	}
}

- (void)inviteAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"lodging.person" method:@"invite" attributes:attributes];
	}
}

- (void)inviteConfirmAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging.person" method:@"inviteConfirm" attributes:attributes];
	}
}

- (void)inviteRejectAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging.person" method:@"inviteReject" attributes:attributes];
	}
}

- (void)invitesAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"lodging.person" method:@"invites" attributes:attributes];
	}
}

@end
