#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingRestrictionAPIController : INAPIController

#pragma mark - MeetingRestriction
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withType:(NSString *)type withRepeatOn:(NSString *)repeatOn withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withEndAt:(NSString *)endAt;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withSelection:(NSString *)selection;
- (void)removeAuthenticatedAtMeetingRestriction:(NSInteger)meetingRestrictionID;
- (void)removeAllAuthenticatedAtEventForPerson:(NSInteger)personID withGlobalRestriction:(NSString *)globalRestriction;
- (void)allRestrictionsAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd forPerson:(NSInteger)personID atGuests:(NSInteger)guestIDs;
@end
