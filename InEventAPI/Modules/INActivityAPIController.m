#import "INActivityAPIController.h"

@implementation INActivityAPIController

#pragma mark - Activity

- (void)createAuthenticatedAtEventWithName:(NSString *)name {

	if (name != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name}};

		[self JSONObjectWithModule:@"activity" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"activity" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"activity" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection forPerson:(NSInteger)personID {

	if (selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection, @"personID" : [NSString stringWithFormat:@"%d", personID]}};

		[self JSONObjectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	if (selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection}};

		[self JSONObjectWithModule:@"activity" method:@"find" attributes:attributes];
	}
}

- (void)findAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"activity" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};

	[self JSONObjectWithModule:@"activity" method:@"get" attributes:attributes];
}

- (void)getAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"activity" method:@"get" attributes:attributes];
}

- (void)getAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"activity" method:@"get" attributes:attributes];
}

@end