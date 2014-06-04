#import "INMapItemAPIController.h"

@implementation INMapItemAPIController

#pragma mark - MapItem

- (void)createAuthenticatedAtEventWithName:(NSString *)name {

	if (name != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name}};

		[self JSONObjectWithModule:@"map.item" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMapItem:(NSInteger)mapItemID withKey:(NSString *)key withValue:(NSString *)value {

	if (key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"mapItemID" : [NSString stringWithFormat:@"%d", mapItemID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"map.item" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMapItem:(NSInteger)mapItemID {

	NSDictionary *attributes = @{@"GET" : @{@"mapItemID" : [NSString stringWithFormat:@"%d", mapItemID]}};

	[self JSONObjectWithModule:@"map.item" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"map.item" method:@"find" attributes:attributes];
}

@end