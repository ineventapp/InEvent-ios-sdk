#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAttendancePersonAPIController : INAPIController

#pragma mark - AttendancePerson
- (void)hitAuthenticatedAtLiveMember:(NSInteger)liveMemberID;
- (void)findAuthenticatedAtEventWithGroupBy:(NSString *)groupBy withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
