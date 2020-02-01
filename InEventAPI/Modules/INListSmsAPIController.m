#import "INListSmsAPIController.h"

@implementation INListSmsAPIController

#pragma mark - ListSms

- (void)createAuthenticatedAtList:(NSInteger)listID withSelection:(NSString *)selection withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"selection" : selection}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"list.sms" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtListSms:(NSInteger)listSmsID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listSmsID" : [NSString stringWithFormat:@"%ld", (long)listSmsID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"list.sms" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtListSms:(NSInteger)listSmsID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listSmsID" : [NSString stringWithFormat:@"%ld", (long)listSmsID]}};

		[self objectWithModule:@"list.sms" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list.sms" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"list.sms" method:@"find" attributes:attributes];
	}
}

- (void)previewAuthenticatedAtListSms:(NSInteger)listSmsID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listSmsID" : [NSString stringWithFormat:@"%ld", (long)listSmsID]}};

		[self objectWithModule:@"list.sms" method:@"preview" attributes:attributes];
	}
}

- (void)sendAuthenticatedAtListSms:(NSInteger)listSmsID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listSmsID" : [NSString stringWithFormat:@"%ld", (long)listSmsID]}};

		[self objectWithModule:@"list.sms" method:@"send" attributes:attributes];
	}
}

@end
