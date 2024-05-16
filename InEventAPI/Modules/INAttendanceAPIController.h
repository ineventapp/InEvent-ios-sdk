#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAttendanceAPIController : INAPIController

#pragma mark - Attendance
- (void)createAuthenticatedAtEventWithName:(NSString *)name withAcronym:(NSString *)acronym withUnitTime:(NSString *)unitTime withMinHits:(NSString *)minHits;
- (void)editAuthenticatedAtAttendance:(NSInteger)attendanceID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtAttendance:(NSInteger)attendanceID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtAttendance:(NSInteger)attendanceID;
@end
