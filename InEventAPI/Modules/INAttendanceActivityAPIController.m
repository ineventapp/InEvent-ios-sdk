#import "INAttendanceActivityAPIController.h"

@implementation INAttendanceActivityAPIController

#pragma mark - AttendanceActivity

- (void)bindAuthenticatedAtAttendance:(NSInteger)attendanceID atActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"attendanceID" : [NSString stringWithFormat:@"%ld", (long)attendanceID], @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"attendance.activity" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtAttendanceActivity:(NSInteger)attendanceActivityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"attendanceActivityID" : [NSString stringWithFormat:@"%ld", (long)attendanceActivityID]}};

		[self objectWithModule:@"attendance.activity" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"attendance.activity" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtAttendance:(NSInteger)attendanceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"attendanceID" : [NSString stringWithFormat:@"%ld", (long)attendanceID]}};

		[self objectWithModule:@"attendance.activity" method:@"find" attributes:attributes];
	}
}

@end
