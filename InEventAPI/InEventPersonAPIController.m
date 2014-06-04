#import "INEventPersonAPIController.h"

@implementation INEventPersonAPIController

#pragma mark - EventPerson

- (void)bindAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"event.person" method:@"bind" attributes:attributes];
}

- (void)bindAuthenticatedAtEventWithName:(NSString *)name withEmail:(NSString *)email {

	if (name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"email" : email}};

		[self JSONObjectWithModule:@"event.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithPath:(NSString *)path {

	if (path != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"path" : path}};

		[self JSONObjectWithModule:@"event.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"key" : key, @"personID" : [NSString stringWithFormat:@"%d", personID]}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"event.person" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"event.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSDictionary *attributes = @{@"GET" : @{@"personID" : [NSString stringWithFormat:@"%d", personID]}};

	[self JSONObjectWithModule:@"event.person" method:@"dismiss" attributes:attributes];
}

- (void)dismissAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"event.person" method:@"dismiss" attributes:attributes];
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order {

	if (selection != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection, @"order" : order}};

		[self JSONObjectWithModule:@"event.person" method:@"find" attributes:attributes];
	}
}

- (void)sendMailAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order {

	if (selection != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection, @"order" : order}};

		[self JSONObjectWithModule:@"event.person" method:@"sendMail" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSDictionary *attributes = @{@"GET" : @{@"personID" : [NSString stringWithFormat:@"%d", personID]}};

	[self JSONObjectWithModule:@"event.person" method:@"get" attributes:attributes];
}

- (void)getAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"event.person" method:@"get" attributes:attributes];
}

@end