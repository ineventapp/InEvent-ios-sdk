#import "INExhibitorAPIController.h"

@implementation INExhibitorAPIController

#pragma mark - Exhibitor

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"exhibitor" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticatedForExhibitor:(NSInteger)exhibitorID {

	NSDictionary *attributes = @{@"GET" : @{@"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}};

	[self JSONObjectWithModule:@"exhibitor" method:@"get" attributes:attributes];
}

- (void)getAuthenticated {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"exhibitor" method:@"get" attributes:attributes];
}

@end