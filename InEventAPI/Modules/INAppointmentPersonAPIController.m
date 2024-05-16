#import "INAppointmentPersonAPIController.h"

@implementation INAppointmentPersonAPIController

#pragma mark - AppointmentPerson

- (void)bindAuthenticatedAtEventAtAppointment:(NSInteger)appointmentID forPerson:(NSInteger)personID atHost:(NSInteger)hostID atMeeting:(NSInteger)meetingID withDate:(NSString *)date withSlotTime:(NSString *)slotTime withSlotDay:(NSString *)slotDay {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && date != nil && slotTime != nil && slotDay != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"appointmentID" : [NSString stringWithFormat:@"%ld", (long)appointmentID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID], @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"date" : date, @"slotTime" : slotTime, @"slotDay" : slotDay}};

		[self objectWithModule:@"appointment.person" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtAppointmentMember:(NSInteger)appointmentMemberID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentMemberID" : [NSString stringWithFormat:@"%ld", (long)appointmentMemberID]}};

		[self objectWithModule:@"appointment.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"appointment.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtAppointmentMember:(NSInteger)appointmentMemberID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentMemberID" : [NSString stringWithFormat:@"%ld", (long)appointmentMemberID]}};

		[self objectWithModule:@"appointment.person" method:@"get" attributes:attributes];
	}
}

@end
