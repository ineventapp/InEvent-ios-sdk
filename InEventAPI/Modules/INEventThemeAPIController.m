#import "INEventThemeAPIController.h"

@implementation INEventThemeAPIController

#pragma mark - EventTheme

- (void)operateAuthenticatedAtEventWithOperation:(NSString *)operation withKey:(NSString *)key withValue:(NSString *)value {

	if (operation != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"operation" : operation, @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"event.theme" method:@"operate" attributes:attributes];
	}
}

@end