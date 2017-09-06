#import "INFeedbackPixelAPIController.h"

@implementation INFeedbackPixelAPIController

#pragma mark - FeedbackPixel

- (void)createAuthenticatedAtFeedback:(NSInteger)feedbackID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"feedback.pixel" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackOptionID" : [NSString stringWithFormat:@"%ld", (long)feedbackOptionID]}};

		[self objectWithModule:@"feedback.pixel" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"feedback.pixel" method:@"find" attributes:attributes];
	}
}

@end