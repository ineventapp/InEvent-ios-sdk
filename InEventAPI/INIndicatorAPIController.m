#import "INIndicatorAPIController.h"

@implementation INIndicatorAPIController

#pragma mark - Indicator

- (void)createAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"key" : key, @"value" : value}};

		[self JSONObjectWithModule:@"indicator" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtIndicator:(NSInteger)indicatorID withKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"indicatorID" : [NSString stringWithFormat:@"%d", indicatorID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"indicator" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtIndicator:(NSInteger)indicatorID {

	NSDictionary *attributes = @{@"GET" : @{@"indicatorID" : [NSString stringWithFormat:@"%d", indicatorID]}};

	[self JSONObjectWithModule:@"indicator" method:@"remove" attributes:attributes];
}

- (void)findAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"indicator" method:@"find" attributes:attributes];
}

- (void)getAtIndicator:(NSInteger)indicatorID {

	NSDictionary *attributes = @{@"GET" : @{@"indicatorID" : [NSString stringWithFormat:@"%d", indicatorID]}};

	[self JSONObjectWithModule:@"indicator" method:@"get" attributes:attributes];
}

@end