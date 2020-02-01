#import "INFeedbackAPIController.h"

@implementation INFeedbackAPIController

#pragma mark - Feedback

- (void)createAuthenticatedAtEventWithText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type withPreQualify:(NSString *)preQualify {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && text != nil && subtitle != nil && type != nil && preQualify != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"text" : text, @"subtitle" : subtitle, @"type" : type, @"preQualify" : preQualify}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil && subtitle != nil && type != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"text" : text, @"subtitle" : subtitle, @"type" : type}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtMeeting:(NSInteger)meetingID withText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil && subtitle != nil && type != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}, @"POST" : @{@"text" : text, @"subtitle" : subtitle, @"type" : type}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtForm:(NSInteger)formID withText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil && subtitle != nil && type != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}, @"POST" : @{@"text" : text, @"subtitle" : subtitle, @"type" : type}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtFeedback:(NSInteger)feedbackID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"feedback" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"feedback" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"feedback" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithSelection:(NSString *)selection withInvite:(NSString *)invite {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && selection != nil && invite != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"selection" : selection, @"invite" : invite}};

		[self objectWithModule:@"feedback" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithSelection:(NSString *)selection withTicketToken:(NSString *)ticketToken {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && selection != nil && ticketToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"selection" : selection, @"ticketToken" : ticketToken}};

		[self objectWithModule:@"feedback" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"feedback" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"feedback" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"feedback" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"feedback" method:@"get" attributes:attributes];
	}
}

- (void)pushNotificationAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"feedback" method:@"pushNotification" attributes:attributes];
	}
}

- (void)pushNotificationAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"feedback" method:@"pushNotification" attributes:attributes];
	}
}

- (void)respondAuthenticatedAtEventForPerson:(NSInteger)personID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"feedback" method:@"respond" attributes:attributes];
	}
}

- (void)respondAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"feedback" method:@"respond" attributes:attributes];
	}
}

- (void)respondAtEventWithInvite:(NSString *)invite withContent:(NSString *)content {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && invite != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"invite" : invite}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"feedback" method:@"respond" attributes:attributes];
	}
}

- (void)respondAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && content != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content, @"password" : password}};

		[self objectWithModule:@"feedback" method:@"respond" attributes:attributes];
	}
}

@end
