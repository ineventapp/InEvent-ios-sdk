#import "INHotelTypeAPIController.h"

@implementation INHotelTypeAPIController

#pragma mark - HotelType

- (void)bindAuthenticatedAtEventAtHotel:(NSInteger)hotelID withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}, @"POST" : @{@"name" : name}};

		[self objectWithModule:@"hotel.type" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtHotelType:(NSInteger)hotelTypeID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelTypeID" : [NSString stringWithFormat:@"%ld", (long)hotelTypeID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotel.type" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtHotelType:(NSInteger)hotelTypeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelTypeID" : [NSString stringWithFormat:@"%ld", (long)hotelTypeID]}};

		[self objectWithModule:@"hotel.type" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithIds:(NSString *)ids {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && ids != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"ids" : ids}};

		[self objectWithModule:@"hotel.type" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"hotel.type" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtHotel:(NSInteger)hotelID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}};

		[self objectWithModule:@"hotel.type" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtHotelType:(NSInteger)hotelTypeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelTypeID" : [NSString stringWithFormat:@"%ld", (long)hotelTypeID]}};

		[self objectWithModule:@"hotel.type" method:@"get" attributes:attributes];
	}
}

@end
