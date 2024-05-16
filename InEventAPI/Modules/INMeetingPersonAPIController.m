#import "INMeetingPersonAPIController.h"

@implementation INMeetingPersonAPIController

#pragma mark - MeetingPerson

- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID withType:(NSString *)type {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && type != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"type" : type}};

		[self objectWithModule:@"meeting.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting.person" method:@"bind" attributes:attributes];
	}
}

- (void)confirmAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"confirm" attributes:attributes];
	}
}

- (void)revokeAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"revoke" attributes:attributes];
	}
}

- (void)rsvpAuthenticatedAtMeeting:(NSInteger)meetingID withRsvp:(NSString *)rsvp withCancel:(NSString *)cancel withReason:(NSString *)reason {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && rsvp != nil && cancel != nil && reason != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}, @"POST" : @{@"rsvp" : rsvp, @"cancel" : cancel, @"reason" : reason}};

		[self objectWithModule:@"meeting.person" method:@"rsvp" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAllAuthenticatedForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"dismissAll" attributes:attributes];
	}
}

- (void)checkInAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"checkIn" attributes:attributes];
	}
}

- (void)checkInAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting.person" method:@"checkIn" attributes:attributes];
	}
}

- (void)matchMakingAuthenticatedAtEventForPerson:(NSInteger)personID withMatchOperation:(NSString *)matchOperation withGuestsPerMeeting:(NSString *)guestsPerMeeting withTagsMatch:(NSString *)tagsMatch withTagsException:(NSString *)tagsException {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && matchOperation != nil && guestsPerMeeting != nil && tagsMatch != nil && tagsException != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"matchOperation" : matchOperation}, @"POST" : @{@"guestsPerMeeting" : guestsPerMeeting, @"tagsMatch" : tagsMatch, @"tagsException" : tagsException}};

		[self objectWithModule:@"meeting.person" method:@"matchMaking" attributes:attributes];
	}
}

- (void)getWaitlistAuthenticatedAtEventForPerson:(NSInteger)personID atMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting.person" method:@"getWaitlist" attributes:attributes];
	}
}

- (void)getWaitlistAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"getWaitlist" attributes:attributes];
	}
}

- (void)clearWaitlistAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"meeting.person" method:@"clearWaitlist" attributes:attributes];
	}
}

- (void)withSlotAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withTags:(NSString *)tags withWishlist:(NSString *)wishlist {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil && tags != nil && wishlist != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query, @"tags" : tags, @"wishlist" : wishlist}};

		[self objectWithModule:@"meeting.person" method:@"withSlot" attributes:attributes];
	}
}

@end
