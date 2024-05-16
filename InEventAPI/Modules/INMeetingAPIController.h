#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingAPIController : INAPIController

#pragma mark - Meeting
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd atPlace:(NSInteger)placeID withCapacity:(NSString *)capacity withDuration:(NSString *)duration withIsRange:(NSString *)isRange withIsSchedule:(NSString *)isSchedule withReason:(NSString *)reason withBreak:(NSString *)break;
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd atPlace:(NSInteger)placeID withCapacity:(NSString *)capacity;
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity withDuration:(NSString *)duration withIsRange:(NSString *)isRange withIsSchedule:(NSString *)isSchedule withReason:(NSString *)reason withBreak:(NSString *)break;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtMeeting:(NSInteger)meetingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID atPlace:(NSInteger)placeID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateInclusive:(NSString *)dateInclusive withCapacity:(NSString *)capacity withSelection:(NSString *)selection withNoEmptySlots:(NSString *)noEmptySlots withOffset:(NSString *)offset withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withPlaceCategory:(NSString *)placeCategory withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateInclusive:(NSString *)dateInclusive withSelection:(NSString *)selection withNoEmptySlots:(NSString *)noEmptySlots withOffset:(NSString *)offset withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateInclusive:(NSString *)dateInclusive withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity withSelection:(NSString *)selection withOffset:(NSString *)offset withPaginated:(NSString *)paginated withQuery:(NSString *)query atGuests:(NSInteger)guestIDs withOrder:(NSString *)order withNoEmptySlots:(NSString *)noEmptySlots withOrderDirection:(NSString *)orderDirection;
- (void)findAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateInclusive:(NSString *)dateInclusive;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withNoEmptySlots:(NSString *)noEmptySlots withDateInclusive:(NSString *)dateInclusive;
- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID withCapacity:(NSString *)capacity;
- (void)getDaysAuthenticatedAtEvent;
- (void)fillAuthenticatedAtEventWithMinutes:(NSString *)minutes;
- (void)removeAllAuthenticatedAtEventForPerson:(NSInteger)personID withCapacity:(NSString *)capacity withPlaceCategory:(NSString *)placeCategory;
- (void)statsAuthenticatedAtEvent;
@end
