#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackOptionAPIController : INAPIController

#pragma mark - FeedbackOption
- (void)createAuthenticatedAtFeedback:(NSInteger)feedbackID withText:(NSString *)text;
- (void)editAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID withText:(NSString *)text;
- (void)getAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID;
- (void)findAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)removeAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID;
- (void)clearAuthenticatedAtFeedback:(NSInteger)feedbackID;
@end