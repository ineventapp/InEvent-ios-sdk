#import "INHotelAPIController.h"

@implementation INHotelAPIController

#pragma mark - Hotel

- (void)createAuthenticatedAtEventWithName:(NSString *)name withAddress:(NSString *)address withCity:(NSString *)city withState:(NSString *)state withCountry:(NSString *)country withZipCode:(NSString *)zipCode withTelephone:(NSString *)telephone withDefault:(NSString *)default withShow:(NSString *)show withWaitlist:(NSString *)waitlist withGuest:(NSString *)guest withAllowChanges:(NSString *)allowChanges withCheckInTime:(NSString *)checkInTime withCheckOutTime:(NSString *)checkOutTime withCancellationPolicy:(NSString *)cancellationPolicy withAcceptsBookingUntil:(NSString *)acceptsBookingUntil {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && address != nil && city != nil && state != nil && country != nil && zipCode != nil && telephone != nil && default != nil && show != nil && waitlist != nil && guest != nil && allowChanges != nil && checkInTime != nil && checkOutTime != nil && cancellationPolicy != nil && acceptsBookingUntil != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"address" : address, @"city" : city, @"state" : state, @"country" : country, @"zipCode" : zipCode, @"telephone" : telephone, @"default" : default, @"show" : show, @"waitlist" : waitlist, @"guest" : guest, @"allowChanges" : allowChanges, @"checkInTime" : checkInTime, @"checkOutTime" : checkOutTime, @"cancellationPolicy" : cancellationPolicy, @"acceptsBookingUntil" : acceptsBookingUntil}};

		[self objectWithModule:@"hotel" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtHotel:(NSInteger)hotelID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotel" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtHotel:(NSInteger)hotelID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}};

		[self objectWithModule:@"hotel" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPublic:(NSString *)public {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && public != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"public" : public}};

		[self objectWithModule:@"hotel" method:@"find" attributes:attributes];
	}
}

- (void)findAtEvent {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self objectWithModule:@"hotel" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtHotel:(NSInteger)hotelID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}};

		[self objectWithModule:@"hotel" method:@"get" attributes:attributes];
	}
}

- (void)analyticsAuthenticatedAtEventWithOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && order != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"order" : order, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"hotel" method:@"analytics" attributes:attributes];
	}
}

@end
