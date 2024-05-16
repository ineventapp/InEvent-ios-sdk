#import "INAttendancePersonAPIController.h"

@implementation INAttendancePersonAPIController

#pragma mark - AttendancePerson

- (void)hitAuthenticatedAtLiveMember:(NSInteger)liveMemberID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveMemberID" : [NSString stringWithFormat:@"%ld", (long)liveMemberID]}};

		[self objectWithModule:@"attendance.person" method:@"hit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithGroupBy:(NSString *)groupBy withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && groupBy != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"groupBy" : groupBy, @"query" : query}};

		[self objectWithModule:@"attendance.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"attendance.person" method:@"get" attributes:attributes];
	}
}

@end
