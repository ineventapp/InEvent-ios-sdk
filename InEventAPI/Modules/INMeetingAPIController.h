#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingAPIController : INAPIController

#pragma mark - Meeting
- (void)createAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withSpot:(NSString *)spot withCapacity:(NSString *)capacity;
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withSpot:(NSString *)spot withCapacity:(NSString *)capacity;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtMeeting:(NSInteger)meetingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)findAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)fillAuthenticatedAtEventWithMinutes:(NSString *)minutes;
@end