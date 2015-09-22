#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingPersonAPIController : INAPIController

#pragma mark - MeetingPerson
- (void)subscribeAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)findAuthenticatedAtEvent;
- (void)confirmAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)revokeAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)cancelAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
@end