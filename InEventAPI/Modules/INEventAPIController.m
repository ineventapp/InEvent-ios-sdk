#import "INEventAPIController.h"

@implementation INEventAPIController

#pragma mark - Event

- (void)createAuthenticatedWithName:(NSString *)name withNickname:(NSString *)nickname {

	if (name != nil && nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"nickname" : nickname}};

		[self JSONObjectWithModule:@"event" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"event" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"event" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedWithSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {

	if (selection != nil && name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection, @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};

		[self JSONObjectWithModule:@"event" method:@"find" attributes:attributes];
	}
}

- (void)findWithName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {

	if (name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};

		[self JSONObjectWithModule:@"event" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"event" method:@"get" attributes:attributes];
}

- (void)getAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"event" method:@"get" attributes:attributes];
}

@end