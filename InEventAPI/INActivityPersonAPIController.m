#import "INActivityPersonAPIController.h"

@implementation INActivityPersonAPIController

#pragma mark - ActivityPerson

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withEmail:(NSString *)email {

	if (name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"name" : name, @"email" : email}};

		[self JSONObjectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withPath:(NSString *)path {

	if (path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"path" : path}};

		[self JSONObjectWithModule:@"activity.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"activity.person" method:@"bind" attributes:attributes];
}

- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"key" : key, @"personID" : [NSString stringWithFormat:@"%d", personID]}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"activity.person" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"activity.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};

	[self JSONObjectWithModule:@"activity.person" method:@"dismiss" attributes:attributes];
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"activity.person" method:@"dismiss" attributes:attributes];
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrder:(NSString *)order {

	if (selection != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"selection" : selection, @"order" : order}};

		[self JSONObjectWithModule:@"activity.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};

	[self JSONObjectWithModule:@"activity.person" method:@"get" attributes:attributes];
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"activity.person" method:@"get" attributes:attributes];
}

@end