#import "INCaseAPIController.h"

@implementation INCaseAPIController

#pragma mark - Case

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"case" method:@"edit" attributes:attributes];
	}
}

- (void)find {



	NSDictionary *attributes = @{@"GET" : @{}};

	[self objectWithModule:@"case" method:@"find" attributes:attributes];
}

- (void)getAtEvent {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self objectWithModule:@"case" method:@"get" attributes:attributes];
	}
}

@end
