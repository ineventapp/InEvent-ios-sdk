#import "INFeedbackOptionAPIController.h"

@implementation INFeedbackOptionAPIController

#pragma mark - FeedbackOption

- (void)createAuthenticatedAtFeedback:(NSInteger)feedbackID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"feedback.option" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"feedback.option" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID]}};

		[self JSONObjectWithModule:@"feedback.option" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self JSONObjectWithModule:@"feedback.option" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID]}};

		[self JSONObjectWithModule:@"feedback.option" method:@"remove" attributes:attributes];
	}
}

- (void)clearAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self JSONObjectWithModule:@"feedback.option" method:@"clear" attributes:attributes];
	}
}

@end