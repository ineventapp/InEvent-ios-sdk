#import "INFeedbackSubmissionAPIController.h"

@implementation INFeedbackSubmissionAPIController

#pragma mark - FeedbackSubmission

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"paginated" : paginated}};

		[self objectWithModule:@"feedback.submission" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"paginated" : paginated}};

		[self objectWithModule:@"feedback.submission" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"paginated" : paginated}};

		[self objectWithModule:@"feedback.submission" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtForm:(NSInteger)formID withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"paginated" : paginated}};

		[self objectWithModule:@"feedback.submission" method:@"find" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtCompany:(NSInteger)companyID atForm:(NSInteger)formID atFeedbackSubmission:(NSInteger)feedbackSubmissionID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"feedbackSubmissionID" : [NSString stringWithFormat:@"%ld", (long)feedbackSubmissionID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"feedback.submission" method:@"operate" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeedbackSubmission:(NSInteger)feedbackSubmissionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackSubmissionID" : [NSString stringWithFormat:@"%ld", (long)feedbackSubmissionID]}};

		[self objectWithModule:@"feedback.submission" method:@"get" attributes:attributes];
	}
}

- (void)processActivityAtEventAtFeedbackSubmission:(NSInteger)feedbackSubmissionID forPerson:(NSInteger)personID withName:(NSString *)name withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && name != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}, @"POST" : @{@"feedbackSubmissionID" : [NSString stringWithFormat:@"%ld", (long)feedbackSubmissionID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"name" : name, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"feedback.submission" method:@"processActivity" attributes:attributes];
	}
}

@end
