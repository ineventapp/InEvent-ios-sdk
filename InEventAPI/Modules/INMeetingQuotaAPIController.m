#import "INMeetingQuotaAPIController.h"

@implementation INMeetingQuotaAPIController

#pragma mark - MeetingQuota

- (void)createAuthenticatedAtEventWithName:(NSString *)name withAmount:(NSString *)amount {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && name != nil && amount != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"amount" : amount}};

		[self JSONObjectWithModule:@"meeting.quota" method:@"create" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMeetingQuota:(NSInteger)meetingQuotaID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingQuotaID" : [NSString stringWithFormat:@"%ld", (long)meetingQuotaID]}};

		[self JSONObjectWithModule:@"meeting.quota" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"meeting.quota" method:@"find" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMeetingQuota:(NSInteger)meetingQuotaID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingQuotaID" : [NSString stringWithFormat:@"%ld", (long)meetingQuotaID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"meeting.quota" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMeetingQuota:(NSInteger)meetingQuotaID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingQuotaID" : [NSString stringWithFormat:@"%ld", (long)meetingQuotaID]}};

		[self JSONObjectWithModule:@"meeting.quota" method:@"remove" attributes:attributes];
	}
}

@end