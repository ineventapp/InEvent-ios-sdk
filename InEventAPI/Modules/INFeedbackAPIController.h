#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackAPIController : INAPIController

#pragma mark - Feedback
- (void)createAuthenticatedAtEventWithText:(NSString *)text withType:(NSString *)type;
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text withType:(NSString *)type;
- (void)editAuthenticatedAtFeedback:(NSInteger)feedbackID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)respondAuthenticatedWithContent:(NSString *)content;
@end