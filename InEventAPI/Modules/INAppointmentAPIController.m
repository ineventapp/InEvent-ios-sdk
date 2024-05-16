#import "INAppointmentAPIController.h"

@implementation INAppointmentAPIController

#pragma mark - Appointment

- (void)createAuthenticatedAtEventWithName:(NSString *)name withVirtual:(NSString *)virtual withLocation:(NSString *)location withDescription:(NSString *)description withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withKey:(NSString *)key withDuration:(NSString *)duration withAvailability:(NSString *)availability atHosts:(NSInteger)hostIDs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && virtual != nil && location != nil && description != nil && dateBegin != nil && dateEnd != nil && key != nil && duration != nil && availability != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"virtual" : virtual, @"location" : location, @"description" : description, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"key" : key, @"duration" : duration, @"availability" : availability, @"hostIDs" : [NSString stringWithFormat:@"%ld", (long)hostIDs]}};

		[self objectWithModule:@"appointment" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtAppointment:(NSInteger)appointmentID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentID" : [NSString stringWithFormat:@"%ld", (long)appointmentID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"appointment" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtAppointment:(NSInteger)appointmentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentID" : [NSString stringWithFormat:@"%ld", (long)appointmentID]}};

		[self objectWithModule:@"appointment" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"appointment" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtAppointment:(NSInteger)appointmentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"appointmentID" : [NSString stringWithFormat:@"%ld", (long)appointmentID]}};

		[self objectWithModule:@"appointment" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithKey:(NSString *)key {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}};

		[self objectWithModule:@"appointment" method:@"get" attributes:attributes];
	}
}

@end
