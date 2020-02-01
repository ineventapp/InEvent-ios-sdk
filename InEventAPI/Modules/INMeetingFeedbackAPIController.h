#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingFeedbackAPIController : INAPIController

#pragma mark - MeetingFeedback
- (void)createAuthenticatedAtMeeting:(NSInteger)meetingID withText:(NSString *)text;
- (void)findAuthenticatedAtMeeting:(NSInteger)meetingID;
@end
