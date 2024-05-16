#import "INHotelReservationAPIController.h"

@implementation INHotelReservationAPIController

#pragma mark - HotelReservation

- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID atGuest:(NSInteger)guestID atHotelBlock:(NSInteger)hotelBlockID atHotelReservation:(NSInteger)hotelReservationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"guestID" : [NSString stringWithFormat:@"%ld", (long)guestID], @"hotelBlockID" : [NSString stringWithFormat:@"%ld", (long)hotelBlockID], @"hotelReservationID" : [NSString stringWithFormat:@"%ld", (long)hotelReservationID]}};

		[self objectWithModule:@"hotel.reservation" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID atGuest:(NSInteger)guestID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"guestID" : [NSString stringWithFormat:@"%ld", (long)guestID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"hotel.reservation" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithPublic:(NSString *)public withGuest:(NSString *)guest atHotelType:(NSInteger)hotelTypeID withHotelBlocks:(NSString *)hotelBlocks {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && public != nil && guest != nil && hotelBlocks != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"public" : public, @"guest" : guest}, @"POST" : @{@"hotelTypeID" : [NSString stringWithFormat:@"%ld", (long)hotelTypeID], @"hotelBlocks" : hotelBlocks}};

		[self objectWithModule:@"hotel.reservation" method:@"bind" attributes:attributes];
	}
}

- (void)replaceAuthenticatedAtEventForPerson:(NSInteger)personID atGuest:(NSInteger)guestID atOriginalHotel:(NSInteger)originalHotelID atNewHotel:(NSInteger)newHotelID atOriginalHotelBlocks:(NSInteger)originalHotelBlockIDs atNewHotelBlocks:(NSInteger)newHotelBlockIDs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"guestID" : [NSString stringWithFormat:@"%ld", (long)guestID]}, @"POST" : @{@"originalHotelID" : [NSString stringWithFormat:@"%ld", (long)originalHotelID], @"newHotelID" : [NSString stringWithFormat:@"%ld", (long)newHotelID], @"originalHotelBlockIDs" : [NSString stringWithFormat:@"%ld", (long)originalHotelBlockIDs], @"newHotelBlockIDs" : [NSString stringWithFormat:@"%ld", (long)newHotelBlockIDs]}};

		[self objectWithModule:@"hotel.reservation" method:@"replace" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtHotelReservation:(NSInteger)hotelReservationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelReservationID" : [NSString stringWithFormat:@"%ld", (long)hotelReservationID]}};

		[self objectWithModule:@"hotel.reservation" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithPublic:(NSString *)public withIds:(NSString *)ids {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && public != nil && ids != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"public" : public}, @"POST" : @{@"ids" : ids}};

		[self objectWithModule:@"hotel.reservation" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithPublic:(NSString *)public withDates:(NSString *)dates {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && public != nil && dates != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"public" : public}, @"POST" : @{@"dates" : dates}};

		[self objectWithModule:@"hotel.reservation" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtHotel:(NSInteger)hotelID atHotelReservations:(NSInteger)hotelReservationIDs withSelf:(NSString *)self withBlockDate:(NSString *)blockDate withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && self != nil && blockDate != nil && order != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID], @"hotelReservationIDs" : [NSString stringWithFormat:@"%ld", (long)hotelReservationIDs], @"self" : self, @"blockDate" : blockDate, @"order" : order, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"hotel.reservation" method:@"find" attributes:attributes];
	}
}

- (void)checkInsAuthenticatedAtEventAtHotel:(NSInteger)hotelID withSelf:(NSString *)self withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && self != nil && order != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID], @"self" : self, @"order" : order, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"hotel.reservation" method:@"checkIns" attributes:attributes];
	}
}

@end
