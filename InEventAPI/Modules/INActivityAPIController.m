#import "INActivityAPIController.h"

@implementation INActivityAPIController

#pragma mark - Activity

- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withLocation:(NSString *)location withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && description != nil && location != nil && dateBegin != nil && dateEnd != nil && capacity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"description" : description, @"location" : location, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"capacity" : capacity}};

		[self objectWithModule:@"activity" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"activity" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withPush:(NSString *)push withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && push != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"key" : key, @"push" : push}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"activity" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection forPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection atList:(NSInteger)listID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withInvite:(NSString *)invite {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && dateBegin != nil && dateEnd != nil && invite != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}, @"POST" : @{@"invite" : invite}};

		[self objectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"activity" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity" method:@"get" attributes:attributes];
	}
}

- (void)getAtActivity:(NSInteger)activityID {



	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

	[self objectWithModule:@"activity" method:@"get" attributes:attributes];
}

- (void)copyAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity" method:@"copy" attributes:attributes];
	}
}

- (void)delayAuthenticatedAtActivity:(NSInteger)activityID withMinutes:(NSString *)minutes withSubsequent:(NSString *)subsequent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && minutes != nil && subsequent != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"minutes" : minutes, @"subsequent" : subsequent}};

		[self objectWithModule:@"activity" method:@"delay" attributes:attributes];
	}
}

@end
