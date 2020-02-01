#import "INNewsAPIController.h"

@implementation INNewsAPIController

#pragma mark - News

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && message != nil && channel != nil && scheduled != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"message" : message, @"channel" : channel, @"scheduled" : scheduled, @"date" : date}};

		[self objectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && message != nil && channel != nil && scheduled != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"message" : message, @"channel" : channel, @"scheduled" : scheduled, @"date" : date}};

		[self objectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && message != nil && channel != nil && scheduled != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"message" : message, @"channel" : channel, @"scheduled" : scheduled, @"date" : date}};

		[self objectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtList:(NSInteger)listID withMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && message != nil && channel != nil && scheduled != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"message" : message, @"channel" : channel, @"scheduled" : scheduled, @"date" : date}};

		[self objectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)editAtNews:(NSInteger)newsID withKey:(NSString *)key withValue:(NSString *)value {


	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"newsID" : [NSString stringWithFormat:@"%ld", (long)newsID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"news" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtNews:(NSInteger)newsID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"newsID" : [NSString stringWithFormat:@"%ld", (long)newsID]}};

		[self objectWithModule:@"news" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"news" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"news" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"news" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"news" method:@"find" attributes:attributes];
	}
}

- (void)getAtNews:(NSInteger)newsID {



	NSDictionary *attributes = @{@"GET" : @{@"newsID" : [NSString stringWithFormat:@"%ld", (long)newsID]}};

	[self objectWithModule:@"news" method:@"get" attributes:attributes];
}

@end
