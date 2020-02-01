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

- (void)findAuthenticatedAtForm:(NSInteger)formID withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"paginated" : paginated}};

		[self objectWithModule:@"feedback.submission" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeedbackSubmission:(NSInteger)feedbackSubmissionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackSubmissionID" : [NSString stringWithFormat:@"%ld", (long)feedbackSubmissionID]}};

		[self objectWithModule:@"feedback.submission" method:@"get" attributes:attributes];
	}
}

@end
