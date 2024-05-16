#import "INAppointmentHostAPIController.h"

@implementation INAppointmentHostAPIController

#pragma mark - AppointmentHost

- (void)bindAuthenticatedAtEventAtAppointment:(NSInteger)appointmentID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"appointmentID" : [NSString stringWithFormat:@"%ld", (long)appointmentID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"appointment.host" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtAppointmentHost:(NSInteger)appointmentHostID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentHostID" : [NSString stringWithFormat:@"%ld", (long)appointmentHostID]}};

		[self objectWithModule:@"appointment.host" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"appointment.host" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtAppointmentHost:(NSInteger)appointmentHostID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentHostID" : [NSString stringWithFormat:@"%ld", (long)appointmentHostID]}};

		[self objectWithModule:@"appointment.host" method:@"get" attributes:attributes];
	}
}

- (void)avaliableAuthenticatedAtHost:(NSInteger)hostID atAppointment:(NSInteger)appointmentID withDate:(NSString *)date withSlotDate:(NSString *)slotDate withSlotTime:(NSString *)slotTime {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && date != nil && slotDate != nil && slotTime != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hostID" : [NSString stringWithFormat:@"%ld", (long)hostID], @"appointmentID" : [NSString stringWithFormat:@"%ld", (long)appointmentID]}, @"POST" : @{@"date" : date, @"slotDate" : slotDate, @"slotTime" : slotTime}};

		[self objectWithModule:@"appointment.host" method:@"avaliable" attributes:attributes];
	}
}

@end
