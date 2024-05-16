#import "INFeedbackOptionAPIController.h"

@implementation INFeedbackOptionAPIController

#pragma mark - FeedbackOption

- (void)createAuthenticatedAtFeedback:(NSInteger)feedbackID withText:(NSString *)text withMultiLines:(NSString *)multiLines {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil && multiLines != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}, @"POST" : @{@"text" : text, @"multiLines" : multiLines}};

		[self objectWithModule:@"feedback.option" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"feedback.option" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID]}};

		[self objectWithModule:@"feedback.option" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"feedback.option" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID]}};

		[self objectWithModule:@"feedback.option" method:@"get" attributes:attributes];
	}
}

- (void)clearAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"feedback.option" method:@"clear" attributes:attributes];
	}
}

@end
