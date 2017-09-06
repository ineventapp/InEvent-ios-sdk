#import "INListEmailAPIController.h"

@implementation INListEmailAPIController

#pragma mark - ListEmail

- (void)createAuthenticatedAtList:(NSInteger)listID withSubject:(NSString *)subject withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && subject != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"subject" : subject, @"text" : text}};

		[self objectWithModule:@"list.email" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithSubject:(NSString *)subject withText:(NSString *)text withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && subject != nil && text != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"subject" : subject, @"text" : text, @"selection" : selection}};

		[self objectWithModule:@"list.email" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"remove" attributes:attributes];
	}
}

- (void)editAuthenticatedAtListEmail:(NSInteger)listEmailID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"list.email" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list.email" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"list.email" method:@"find" attributes:attributes];
	}
}

- (void)sendAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"send" attributes:attributes];
	}
}

- (void)previewAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"preview" attributes:attributes];
	}
}

@end