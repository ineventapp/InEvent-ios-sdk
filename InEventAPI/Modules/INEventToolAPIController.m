#import "INEventToolAPIController.h"

@implementation INEventToolAPIController

#pragma mark - EventTool

- (void)operateAuthenticatedAtEventWithFeature:(NSString *)feature withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && feature != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"feature" : feature, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.tool" method:@"operate" attributes:attributes];
	}
}

- (void)getAtEventWithFeature:(NSString *)feature {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && feature != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"feature" : feature}};

		[self objectWithModule:@"event.tool" method:@"get" attributes:attributes];
	}
}

@end