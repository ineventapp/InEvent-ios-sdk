#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAttendanceActivityAPIController : INAPIController

#pragma mark - AttendanceActivity
- (void)bindAuthenticatedAtAttendance:(NSInteger)attendanceID atActivity:(NSInteger)activityID;
- (void)dismissAuthenticatedAtAttendanceActivity:(NSInteger)attendanceActivityID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtAttendance:(NSInteger)attendanceID;
@end
