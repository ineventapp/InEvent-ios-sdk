#import "INMeetingRestrictionAPIController.h"

@implementation INMeetingRestrictionAPIController

#pragma mark - MeetingRestriction

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withType:(NSString *)type withRepeatOn:(NSString *)repeatOn withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withEndAt:(NSString *)endAt {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && repeatOn != nil && dateBegin != nil && dateEnd != nil && endAt != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"type" : type, @"repeatOn" : repeatOn, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"endAt" : endAt}};

		[self objectWithModule:@"meeting.restriction" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"selection" : selection}};

		[self objectWithModule:@"meeting.restriction" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMeetingRestriction:(NSInteger)meetingRestrictionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingRestrictionID" : [NSString stringWithFormat:@"%ld", (long)meetingRestrictionID]}};

		[self objectWithModule:@"meeting.restriction" method:@"remove" attributes:attributes];
	}
}

- (void)removeAllAuthenticatedAtEventForPerson:(NSInteger)personID withGlobalRestriction:(NSString *)globalRestriction {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && globalRestriction != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"globalRestriction" : globalRestriction}};

		[self objectWithModule:@"meeting.restriction" method:@"removeAll" attributes:attributes];
	}
}

- (void)allRestrictionsAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd forPerson:(NSInteger)personID atGuests:(NSInteger)guestIDs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"guestIDs" : [NSString stringWithFormat:@"%ld", (long)guestIDs]}};

		[self objectWithModule:@"meeting.restriction" method:@"allRestrictions" attributes:attributes];
	}
}

@end
