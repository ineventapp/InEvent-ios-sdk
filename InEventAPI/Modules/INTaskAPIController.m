#import "INTaskAPIController.h"

@implementation INTaskAPIController

#pragma mark - Task

- (void)createAuthenticatedAtEventWithName:(NSString *)name withTarget:(NSString *)target withTargetModifiers:(NSString *)targetModifiers {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && target != nil && targetModifiers != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"target" : target, @"targetModifiers" : targetModifiers}};

		[self objectWithModule:@"task" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"task" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTask:(NSInteger)taskID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"taskID" : [NSString stringWithFormat:@"%ld", (long)taskID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"task" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtTask:(NSInteger)taskID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"taskID" : [NSString stringWithFormat:@"%ld", (long)taskID]}};

		[self objectWithModule:@"task" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && paginated != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paginated" : paginated, @"query" : query}};

		[self objectWithModule:@"task" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtTask:(NSInteger)taskID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"taskID" : [NSString stringWithFormat:@"%ld", (long)taskID]}};

		[self objectWithModule:@"task" method:@"get" attributes:attributes];
	}
}

@end
