#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingQuotaAPIController : INAPIController

#pragma mark - MeetingQuota
- (void)createAuthenticatedAtEventWithName:(NSString *)name withAmount:(NSString *)amount;
- (void)getAuthenticatedAtMeetingQuota:(NSInteger)meetingQuotaID;
- (void)findAuthenticatedAtEvent;
- (void)editAuthenticatedAtMeetingQuota:(NSInteger)meetingQuotaID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtMeetingQuota:(NSInteger)meetingQuotaID;
@end
