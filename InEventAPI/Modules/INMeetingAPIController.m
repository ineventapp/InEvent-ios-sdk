#import "INMeetingAPIController.h"

@implementation INMeetingAPIController

#pragma mark - Meeting

- (void)createAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withSpot:(NSString *)spot {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && spot != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"spot" : spot}};

		[self JSONObjectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMeeting:(NSInteger)meetingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"meeting" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self JSONObjectWithModule:@"meeting" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self JSONObjectWithModule:@"meeting" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

@end