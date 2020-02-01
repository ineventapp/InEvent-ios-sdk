#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackOptionAPIController : INAPIController

#pragma mark - FeedbackOption
- (void)createAuthenticatedAtFeedback:(NSInteger)feedbackID withTextPT:(NSString *)textPT withTextEN:(NSString *)textEN withTextES:(NSString *)textES;
- (void)editAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID;
- (void)findAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)getAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID;
- (void)clearAuthenticatedAtFeedback:(NSInteger)feedbackID;
@end
