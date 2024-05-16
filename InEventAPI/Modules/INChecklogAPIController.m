#import "INChecklogAPIController.h"

@implementation INChecklogAPIController

#pragma mark - Checklog

- (void)checkInAuthenticatedAtEventAtActivity:(NSInteger)activityID withCode:(NSString *)code withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && code != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"code" : code, @"date" : date}};

		[self objectWithModule:@"checklog" method:@"checkIn" attributes:attributes];
	}
}

- (void)checkInAuthenticatedAtEventWithCode:(NSString *)code withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && code != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"code" : code, @"date" : date}};

		[self objectWithModule:@"checklog" method:@"checkIn" attributes:attributes];
	}
}

- (void)checkOutAuthenticatedAtEventAtActivity:(NSInteger)activityID withCode:(NSString *)code withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && code != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"code" : code, @"date" : date}};

		[self objectWithModule:@"checklog" method:@"checkOut" attributes:attributes];
	}
}

- (void)checkOutAuthenticatedAtEventWithCode:(NSString *)code withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && code != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"code" : code, @"date" : date}};

		[self objectWithModule:@"checklog" method:@"checkOut" attributes:attributes];
	}
}

- (void)statsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"checklog" method:@"stats" attributes:attributes];
	}
}

- (void)checkedInAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"checklog" method:@"checkedIn" attributes:attributes];
	}
}

- (void)checkedInAuthenticatedAtEventAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"checklog" method:@"checkedIn" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withKey:(NSString *)key withQuery:(NSString *)query withSort:(NSString *)sort withSortDirection:(NSString *)sortDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && key != nil && query != nil && sort != nil && sortDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"key" : key, @"query" : query, @"sort" : sort, @"sortDirection" : sortDirection}};

		[self objectWithModule:@"checklog" method:@"find" attributes:attributes];
	}
}

@end
