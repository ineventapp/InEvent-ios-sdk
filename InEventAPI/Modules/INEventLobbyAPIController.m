#import "INEventLobbyAPIController.h"

@implementation INEventLobbyAPIController

#pragma mark - EventLobby

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.lobby" method:@"operate" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.lobby" method:@"get" attributes:attributes];
	}
}

@end
