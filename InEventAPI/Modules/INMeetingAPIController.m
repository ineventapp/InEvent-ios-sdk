#import "INMeetingAPIController.h"

@implementation INMeetingAPIController

#pragma mark - Meeting

- (void)createAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withSpot:(NSString *)spot withCapacity:(NSString *)capacity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && spot != nil && capacity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"spot" : spot, @"capacity" : capacity}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withSpot:(NSString *)spot withCapacity:(NSString *)capacity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && spot != nil && capacity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"spot" : spot, @"capacity" : capacity}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMeeting:(NSInteger)meetingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"meeting" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting" method:@"get" attributes:attributes];
	}
}

- (void)fillAuthenticatedAtEventWithMinutes:(NSString *)minutes {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && minutes != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"minutes" : minutes}};

		[self objectWithModule:@"meeting" method:@"fill" attributes:attributes];
	}
}

@end
