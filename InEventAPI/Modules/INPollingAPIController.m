#import "INPollingAPIController.h"

@implementation INPollingAPIController

#pragma mark - Polling

- (void)createAuthenticatedAtEventWithType:(NSString *)type withEndpoint:(NSString *)endpoint {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && endpoint != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"type" : type, @"endpoint" : endpoint}};

		[self objectWithModule:@"polling" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtPolling:(NSInteger)pollingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"pollingID" : [NSString stringWithFormat:@"%ld", (long)pollingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"polling" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtPolling:(NSInteger)pollingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"pollingID" : [NSString stringWithFormat:@"%ld", (long)pollingID]}};

		[self objectWithModule:@"polling" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"polling" method:@"find" attributes:attributes];
	}
}

@end