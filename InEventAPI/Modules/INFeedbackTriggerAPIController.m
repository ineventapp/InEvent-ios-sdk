#import "INFeedbackTriggerAPIController.h"

@implementation INFeedbackTriggerAPIController

#pragma mark - FeedbackTrigger

- (void)editAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atList:(NSInteger)listID withOption:(NSString *)option withSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && option != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}, @"POST" : @{@"eventID" : eventID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"option" : option, @"source" : source}};

		[self objectWithModule:@"feedback.trigger" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"feedback.trigger" method:@"find" attributes:attributes];
	}
}

@end
