#import "INEventThemeAPIController.h"

@implementation INEventThemeAPIController

#pragma mark - EventTheme

- (void)operateAuthenticatedAtEventWithOperation:(NSString *)operation withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && operation != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"operation" : operation, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.theme" method:@"operate" attributes:attributes];
	}
}

@end
