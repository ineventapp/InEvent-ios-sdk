#import "INListPushAPIController.h"

@implementation INListPushAPIController

#pragma mark - ListPush

- (void)createAuthenticatedAtList:(NSInteger)listID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"list.push" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtListPush:(NSInteger)listPushID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listPushID" : [NSString stringWithFormat:@"%ld", (long)listPushID]}};

		[self JSONObjectWithModule:@"list.push" method:@"remove" attributes:attributes];
	}
}

- (void)editAuthenticatedAtListPush:(NSInteger)listPushID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listPushID" : [NSString stringWithFormat:@"%ld", (long)listPushID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"list.push" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self JSONObjectWithModule:@"list.push" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"list.push" method:@"find" attributes:attributes];
	}
}

- (void)sendAuthenticatedAtListPush:(NSInteger)listPushID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listPushID" : [NSString stringWithFormat:@"%ld", (long)listPushID]}};

		[self JSONObjectWithModule:@"list.push" method:@"send" attributes:attributes];
	}
}

@end