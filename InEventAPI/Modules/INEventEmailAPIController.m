#import "INEventEmailAPIController.h"

@implementation INEventEmailAPIController

#pragma mark - EventEmail

- (void)createAuthenticatedAtEventWithSubject:(NSString *)subject withText:(NSString *)text atList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && subject != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"subject" : subject, @"text" : text, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"event.email" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithSource:(NSString *)source withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.email" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.email" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventEmail:(NSInteger)eventEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventEmailID" : [NSString stringWithFormat:@"%ld", (long)eventEmailID]}};

		[self objectWithModule:@"event.email" method:@"get" attributes:attributes];
	}
}

- (void)tryAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"event.email" method:@"try" attributes:attributes];
	}
}

- (void)dispatchAuthenticatedAtEventEmail:(NSInteger)eventEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"eventEmailID" : [NSString stringWithFormat:@"%ld", (long)eventEmailID]}};

		[self objectWithModule:@"event.email" method:@"dispatch" attributes:attributes];
	}
}

@end