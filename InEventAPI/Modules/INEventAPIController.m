#import "INEventAPIController.h"

@implementation INEventAPIController

#pragma mark - Event

- (void)createAuthenticatedWithName:(NSString *)name withNickname:(NSString *)nickname {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"name" : name, @"nickname" : nickname}};

		[self JSONObjectWithModule:@"event" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"event" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"event" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"event" method:@"get" attributes:attributes];
	}
}

- (void)getAtEvent {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self JSONObjectWithModule:@"event" method:@"get" attributes:attributes];
	}
}

- (void)checkAccessCodeAuthenticatedAtEventWithAccessCode:(NSString *)accessCode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && accessCode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"accessCode" : accessCode}};

		[self JSONObjectWithModule:@"event" method:@"checkAccessCode" attributes:attributes];
	}
}

- (void)statisticsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"event" method:@"statistics" attributes:attributes];
	}
}

@end