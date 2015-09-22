#import "INActivityAPIController.h"

@implementation INActivityAPIController

#pragma mark - Activity

- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && name != nil && description != nil && dateBegin != nil && dateEnd != nil && capacity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"description" : description, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"capacity" : capacity}};

		[self JSONObjectWithModule:@"activity" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self JSONObjectWithModule:@"activity" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withPush:(NSString *)push withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && push != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"key" : key, @"push" : push}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"activity" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self JSONObjectWithModule:@"activity" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self JSONObjectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAtEvent {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self JSONObjectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"activity" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self JSONObjectWithModule:@"activity" method:@"get" attributes:attributes];
	}
}

- (void)getAtActivity:(NSInteger)activityID {



	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

	[self JSONObjectWithModule:@"activity" method:@"get" attributes:attributes];
}

- (void)copyAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self JSONObjectWithModule:@"activity" method:@"copy" attributes:attributes];
	}
}

- (void)delayAuthenticatedAtActivity:(NSInteger)activityID withMinutes:(NSString *)minutes withSubsequent:(NSString *)subsequent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && minutes != nil && subsequent != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"minutes" : minutes, @"subsequent" : subsequent}};

		[self JSONObjectWithModule:@"activity" method:@"delay" attributes:attributes];
	}
}

@end