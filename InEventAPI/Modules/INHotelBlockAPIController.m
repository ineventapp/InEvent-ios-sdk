#import "INHotelBlockAPIController.h"

@implementation INHotelBlockAPIController

#pragma mark - HotelBlock

- (void)bindAuthenticatedAtEventAtHotel:(NSInteger)hotelID withBlockDate:(NSString *)blockDate withRooms:(NSString *)rooms withAttrition:(NSString *)attrition {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && blockDate != nil && rooms != nil && attrition != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}, @"POST" : @{@"blockDate" : blockDate, @"rooms" : rooms, @"attrition" : attrition}};

		[self objectWithModule:@"hotel.block" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtHotel:(NSInteger)hotelID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"hotel.block" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtHotelBlock:(NSInteger)hotelBlockID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelBlockID" : [NSString stringWithFormat:@"%ld", (long)hotelBlockID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotel.block" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtHotelBlock:(NSInteger)hotelBlockID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelBlockID" : [NSString stringWithFormat:@"%ld", (long)hotelBlockID]}};

		[self objectWithModule:@"hotel.block" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithIds:(NSString *)ids {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && ids != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"ids" : ids}};

		[self objectWithModule:@"hotel.block" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"hotel.block" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtHotel:(NSInteger)hotelID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelID" : [NSString stringWithFormat:@"%ld", (long)hotelID]}};

		[self objectWithModule:@"hotel.block" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtHotelBlock:(NSInteger)hotelBlockID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hotelBlockID" : [NSString stringWithFormat:@"%ld", (long)hotelBlockID]}};

		[self objectWithModule:@"hotel.block" method:@"get" attributes:attributes];
	}
}

@end
