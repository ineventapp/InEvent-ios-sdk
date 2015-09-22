#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingAPIController : INAPIController

#pragma mark - Meeting
- (void)createAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withSpot:(NSString *)spot;
- (void)editAuthenticatedAtMeeting:(NSInteger)meetingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
@end