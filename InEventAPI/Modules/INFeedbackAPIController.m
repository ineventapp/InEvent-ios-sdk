#import "INFeedbackAPIController.h"

@implementation INFeedbackAPIController

#pragma mark - Feedback

- (void)createAuthenticatedAtEventWithTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES withPreQualify:(NSString *)preQualify {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && textPT != nil && type != nil && textEN != nil && textES != nil && preQualify != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"textPT" : textPT, @"type" : type, @"textEN" : textEN, @"textES" : textES, @"preQualify" : preQualify}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && textPT != nil && type != nil && textEN != nil && textES != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"textPT" : textPT, @"type" : type, @"textEN" : textEN, @"textES" : textES}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtMeeting:(NSInteger)meetingID withTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && textPT != nil && type != nil && textEN != nil && textES != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}, @"POST" : @{@"textPT" : textPT, @"type" : type, @"textEN" : textEN, @"textES" : textES}};

		[self objectWithModule:@"feedback" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtForm:(NSInteger)formID withTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && textPT != nil && type != nil && textEN != nil && textES != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}, @"POST" : @{@"textPT" : textPT, @"type" : type, @"textEN" : textEN, @"textES" : textES}};

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

- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"feedback" method:@"get" attributes:attributes];
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

- (void)respondAuthenticatedWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"feedback" method:@"respond" attributes:attributes];
	}
}

@end