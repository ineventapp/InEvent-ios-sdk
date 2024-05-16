#import "INAttendanceAPIController.h"

@implementation INAttendanceAPIController

#pragma mark - Attendance

- (void)createAuthenticatedAtEventWithName:(NSString *)name withAcronym:(NSString *)acronym withUnitTime:(NSString *)unitTime withMinHits:(NSString *)minHits {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && acronym != nil && unitTime != nil && minHits != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"acronym" : acronym, @"unitTime" : unitTime, @"minHits" : minHits}};

		[self objectWithModule:@"attendance" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtAttendance:(NSInteger)attendanceID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"attendanceID" : [NSString stringWithFormat:@"%ld", (long)attendanceID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"attendance" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtAttendance:(NSInteger)attendanceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"attendanceID" : [NSString stringWithFormat:@"%ld", (long)attendanceID]}};

		[self objectWithModule:@"attendance" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"attendance" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtAttendance:(NSInteger)attendanceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"attendanceID" : [NSString stringWithFormat:@"%ld", (long)attendanceID]}};

		[self objectWithModule:@"attendance" method:@"get" attributes:attributes];
	}
}

@end
