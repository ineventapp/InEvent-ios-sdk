#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackSubmissionAPIController : INAPIController

#pragma mark - FeedbackSubmission
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtForm:(NSInteger)formID withPaginated:(NSString *)paginated;
- (void)getAuthenticatedAtFeedbackSubmission:(NSInteger)feedbackSubmissionID;
@end
