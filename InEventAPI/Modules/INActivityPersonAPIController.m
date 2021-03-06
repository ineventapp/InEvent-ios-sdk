#import "INActivityPersonAPIController.h"

@implementation INActivityPersonAPIController

#pragma mark - ActivityPerson

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withBypassWebhook:(NSString *)bypassWebhook withName:(NSString *)name withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && bypassWebhook != nil && name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"bypassWebhook" : bypassWebhook}, @"POST" : @{@"name" : name, @"email" : email}};

		[self objectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID withBypassWebhook:(NSString *)bypassWebhook {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && bypassWebhook != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"bypassWebhook" : bypassWebhook}};

		[self objectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithBypassWebhook:(NSString *)bypassWebhook withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && bypassWebhook != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"bypassWebhook" : bypassWebhook}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"key" : key, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"activity.person" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"activity.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"activity.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID withBypassWebhook:(NSString *)bypassWebhook {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && bypassWebhook != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"bypassWebhook" : bypassWebhook}};

		[self objectWithModule:@"activity.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithBypassWebhook:(NSString *)bypassWebhook withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && bypassWebhook != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"bypassWebhook" : bypassWebhook}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"activity.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrder:(NSString *)order withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && order != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"selection" : selection, @"order" : order, @"query" : query}};

		[self objectWithModule:@"activity.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"activity.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.person" method:@"get" attributes:attributes];
	}
}

- (void)calculateAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.person" method:@"calculate" attributes:attributes];
	}
}

@end
