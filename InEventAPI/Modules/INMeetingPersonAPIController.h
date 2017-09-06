#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingPersonAPIController : INAPIController

#pragma mark - MeetingPerson
- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)confirmAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)revokeAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)dismissAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)checkInAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)checkInAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
@end