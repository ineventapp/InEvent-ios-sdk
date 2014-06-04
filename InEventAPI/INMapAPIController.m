#import "INMapAPIController.h"

@implementation INMapAPIController

#pragma mark - Map

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"map" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"map" method:@"find" attributes:attributes];
}

@end