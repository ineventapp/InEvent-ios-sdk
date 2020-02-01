#import "INFlightAPIController.h"

@implementation INFlightAPIController

#pragma mark - Flight

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withSeat:(NSString *)seat withTicketType:(NSString *)ticketType withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateIssue:(NSString *)dateIssue withPrice:(NSString *)price withPriceConversion:(NSString *)priceConversion withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket withConfirmation:(NSString *)confirmation withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && airline != nil && number != nil && gate != nil && seat != nil && ticketType != nil && airportBegin != nil && airportEnd != nil && dateBegin != nil && dateEnd != nil && dateIssue != nil && price != nil && priceConversion != nil && insurance != nil && eTicket != nil && confirmation != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"airline" : airline, @"number" : number, @"gate" : gate, @"seat" : seat, @"ticketType" : ticketType, @"airportBegin" : airportBegin, @"airportEnd" : airportEnd, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"dateIssue" : dateIssue, @"price" : price, @"priceConversion" : priceConversion, @"insurance" : insurance, @"eTicket" : eTicket, @"confirmation" : confirmation, @"message" : message}};

		[self objectWithModule:@"flight" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withTicketType:(NSString *)ticketType withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateIssue:(NSString *)dateIssue withPrice:(NSString *)price withPriceConversion:(NSString *)priceConversion withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket withConfirmation:(NSString *)confirmation withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && email != nil && airline != nil && number != nil && gate != nil && ticketType != nil && airportBegin != nil && airportEnd != nil && dateBegin != nil && dateEnd != nil && dateIssue != nil && price != nil && priceConversion != nil && insurance != nil && eTicket != nil && confirmation != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"email" : email, @"airline" : airline, @"number" : number, @"gate" : gate, @"ticketType" : ticketType, @"airportBegin" : airportBegin, @"airportEnd" : airportEnd, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"dateIssue" : dateIssue, @"price" : price, @"priceConversion" : priceConversion, @"insurance" : insurance, @"eTicket" : eTicket, @"confirmation" : confirmation, @"message" : message}};

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

- (void)editAuthenticatedAtFlight:(NSInteger)flightID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"flightID" : [NSString stringWithFormat:@"%ld", (long)flightID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"flight" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFlight:(NSInteger)flightID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"flightID" : [NSString stringWithFormat:@"%ld", (long)flightID]}};

		[self objectWithModule:@"flight" method:@"remove" attributes:attributes];
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

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withQueryKey:(NSString *)queryKey {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil && queryKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query, @"queryKey" : queryKey}};

		[self objectWithModule:@"flight" method:@"find" attributes:attributes];
	}
}

- (void)statsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"flight" method:@"stats" attributes:attributes];
	}
}

@end
