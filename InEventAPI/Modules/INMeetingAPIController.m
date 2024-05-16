#import "INMeetingAPIController.h"

@implementation INMeetingAPIController

#pragma mark - Meeting

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd atPlace:(NSInteger)placeID withCapacity:(NSString *)capacity withDuration:(NSString *)duration withIsRange:(NSString *)isRange withIsSchedule:(NSString *)isSchedule withReason:(NSString *)reason withBreak:(NSString *)break {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && capacity != nil && duration != nil && isRange != nil && isSchedule != nil && reason != nil && break != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID], @"capacity" : capacity, @"duration" : duration, @"isRange" : isRange, @"isSchedule" : isSchedule, @"reason" : reason, @"break" : break}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd atPlace:(NSInteger)placeID withCapacity:(NSString *)capacity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && capacity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID], @"capacity" : capacity}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity withDuration:(NSString *)duration withIsRange:(NSString *)isRange withIsSchedule:(NSString *)isSchedule withReason:(NSString *)reason withBreak:(NSString *)break {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && capacity != nil && duration != nil && isRange != nil && isSchedule != nil && reason != nil && break != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"capacity" : capacity, @"duration" : duration, @"isRange" : isRange, @"isSchedule" : isSchedule, @"reason" : reason, @"break" : break}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"meeting" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMeeting:(NSInteger)meetingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"meeting" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID atPlace:(NSInteger)placeID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateInclusive:(NSString *)dateInclusive withCapacity:(NSString *)capacity withSelection:(NSString *)selection withNoEmptySlots:(NSString *)noEmptySlots withOffset:(NSString *)offset withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && dateInclusive != nil && capacity != nil && selection != nil && noEmptySlots != nil && offset != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID], @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"dateInclusive" : dateInclusive, @"capacity" : capacity, @"selection" : selection, @"noEmptySlots" : noEmptySlots, @"offset" : offset, @"paginated" : paginated}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withPlaceCategory:(NSString *)placeCategory withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateInclusive:(NSString *)dateInclusive withSelection:(NSString *)selection withNoEmptySlots:(NSString *)noEmptySlots withOffset:(NSString *)offset withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && placeCategory != nil && dateBegin != nil && dateEnd != nil && dateInclusive != nil && selection != nil && noEmptySlots != nil && offset != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"placeCategory" : placeCategory, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"dateInclusive" : dateInclusive, @"selection" : selection, @"noEmptySlots" : noEmptySlots, @"offset" : offset, @"paginated" : paginated}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateInclusive:(NSString *)dateInclusive withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity withSelection:(NSString *)selection withOffset:(NSString *)offset withPaginated:(NSString *)paginated withQuery:(NSString *)query atGuests:(NSInteger)guestIDs withOrder:(NSString *)order withNoEmptySlots:(NSString *)noEmptySlots withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateInclusive != nil && dateEnd != nil && capacity != nil && selection != nil && offset != nil && paginated != nil && query != nil && order != nil && noEmptySlots != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"dateBegin" : dateBegin, @"dateInclusive" : dateInclusive, @"dateEnd" : dateEnd, @"capacity" : capacity, @"selection" : selection, @"offset" : offset, @"paginated" : paginated, @"query" : query, @"guestIDs" : [NSString stringWithFormat:@"%ld", (long)guestIDs], @"order" : order, @"noEmptySlots" : noEmptySlots, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateInclusive:(NSString *)dateInclusive {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && dateInclusive != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"dateInclusive" : dateInclusive}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withNoEmptySlots:(NSString *)noEmptySlots withDateInclusive:(NSString *)dateInclusive {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil && noEmptySlots != nil && dateInclusive != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"noEmptySlots" : noEmptySlots, @"dateInclusive" : dateInclusive}};

		[self objectWithModule:@"meeting" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMeeting:(NSInteger)meetingID withCapacity:(NSString *)capacity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && capacity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID], @"capacity" : capacity}};

		[self objectWithModule:@"meeting" method:@"get" attributes:attributes];
	}
}

- (void)getDaysAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"meeting" method:@"getDays" attributes:attributes];
	}
}

- (void)fillAuthenticatedAtEventWithMinutes:(NSString *)minutes {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && minutes != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"minutes" : minutes}};

		[self objectWithModule:@"meeting" method:@"fill" attributes:attributes];
	}
}

- (void)removeAllAuthenticatedAtEventForPerson:(NSInteger)personID withCapacity:(NSString *)capacity withPlaceCategory:(NSString *)placeCategory {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && capacity != nil && placeCategory != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"capacity" : capacity, @"placeCategory" : placeCategory}};

		[self objectWithModule:@"meeting" method:@"removeAll" attributes:attributes];
	}
}

- (void)statsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"meeting" method:@"stats" attributes:attributes];
	}
}

@end
