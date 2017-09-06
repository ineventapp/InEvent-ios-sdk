#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackAPIController : INAPIController

#pragma mark - Feedback
- (void)createAuthenticatedAtEventWithTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES withPreQualify:(NSString *)preQualify;
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES;
- (void)createAuthenticatedAtMeeting:(NSInteger)meetingID withTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES;
- (void)createAuthenticatedAtForm:(NSInteger)formID withTextPT:(NSString *)textPT withType:(NSString *)type withTextEN:(NSString *)textEN withTextES:(NSString *)textES;
- (void)editAuthenticatedAtFeedback:(NSInteger)feedbackID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)findAuthenticatedAtForm:(NSInteger)formID;
- (void)pushNotificationAuthenticatedAtActivity:(NSInteger)activityID;
- (void)pushNotificationAuthenticatedAtEvent;
- (void)respondAuthenticatedWithContent:(NSString *)content;
@end