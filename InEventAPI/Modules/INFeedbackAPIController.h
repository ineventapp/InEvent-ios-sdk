#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackAPIController : INAPIController

#pragma mark - Feedback
- (void)createAuthenticatedAtEventWithText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type withPreQualify:(NSString *)preQualify;
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type;
- (void)createAuthenticatedAtMeeting:(NSInteger)meetingID withText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type;
- (void)createAuthenticatedAtForm:(NSInteger)formID withText:(NSString *)text withSubtitle:(NSString *)subtitle withType:(NSString *)type;
- (void)editAuthenticatedAtFeedback:(NSInteger)feedbackID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAtEventWithSelection:(NSString *)selection withInvite:(NSString *)invite;
- (void)findAtEventWithSelection:(NSString *)selection withTicketToken:(NSString *)ticketToken;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)findAuthenticatedAtForm:(NSInteger)formID;
- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)pushNotificationAuthenticatedAtActivity:(NSInteger)activityID;
- (void)pushNotificationAuthenticatedAtEvent;
- (void)respondAuthenticatedAtEventForPerson:(NSInteger)personID withContent:(NSString *)content;
- (void)respondAuthenticatedAtEventWithContent:(NSString *)content;
- (void)respondAtEventWithInvite:(NSString *)invite withContent:(NSString *)content;
- (void)respondAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password;
@end
