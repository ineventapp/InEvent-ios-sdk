#import "INMeetingPersonAPIController.h"

@implementation INMeetingPersonAPIController

#pragma mark - MeetingPerson

- (void)subscribeAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self JSONObjectWithModule:@"meeting.person" method:@"subscribe" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self JSONObjectWithModule:@"meeting.person" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"meeting.person" method:@"find" attributes:attributes];
	}
}

- (void)confirmAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"meeting.person" method:@"confirm" attributes:attributes];
	}
}

- (void)revokeAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"meeting.person" method:@"revoke" attributes:attributes];
	}
}

- (void)cancelAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"meeting.person" method:@"cancel" attributes:attributes];
	}
}

@end