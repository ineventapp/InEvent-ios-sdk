#import "INFlightAPIController.h"

@implementation INFlightAPIController

#pragma mark - Flight

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && airline != nil && number != nil && gate != nil && airportBegin != nil && airportEnd != nil && dateBegin != nil && dateEnd != nil && price != nil && insurance != nil && eTicket != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"airline" : airline, @"number" : number, @"gate" : gate, @"airportBegin" : airportBegin, @"airportEnd" : airportEnd, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"price" : price, @"insurance" : insurance, @"eTicket" : eTicket}};

		[self objectWithModule:@"flight" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && email != nil && airline != nil && number != nil && gate != nil && airportBegin != nil && airportEnd != nil && dateBegin != nil && dateEnd != nil && price != nil && insurance != nil && eTicket != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"email" : email, @"airline" : airline, @"number" : number, @"gate" : gate, @"airportBegin" : airportBegin, @"airportEnd" : airportEnd, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"price" : price, @"insurance" : insurance, @"eTicket" : eTicket}};

		[self objectWithModule:@"flight" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"flight" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"flight" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"flight" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"flight" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFlight:(NSInteger)flightID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"flightID" : [NSString stringWithFormat:@"%ld", (long)flightID]}};

		[self objectWithModule:@"flight" method:@"remove" attributes:attributes];
	}
}

@end