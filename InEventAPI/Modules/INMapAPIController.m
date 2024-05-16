#import "INMapAPIController.h"

@implementation INMapAPIController

#pragma mark - Map

- (void)createAuthenticatedAtEventWithName:(NSString *)name withFloorName:(NSString *)floorName withFloorSequence:(NSString *)floorSequence withCenter:(NSString *)center withBounds:(NSString *)bounds withDescription:(NSString *)description withLocation:(NSString *)location withPreview:(NSString *)preview withExtra:(NSString *)extra atParent:(NSInteger)parentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && floorName != nil && floorSequence != nil && center != nil && bounds != nil && description != nil && location != nil && preview != nil && extra != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"floorName" : floorName, @"floorSequence" : floorSequence, @"center" : center, @"bounds" : bounds, @"description" : description, @"location" : location, @"preview" : preview, @"extra" : extra, @"parentID" : [NSString stringWithFormat:@"%ld", (long)parentID]}};

		[self objectWithModule:@"map" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMap:(NSInteger)mapID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapID" : [NSString stringWithFormat:@"%ld", (long)mapID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"map" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtMap:(NSInteger)mapID withVisible:(NSString *)visible {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && visible != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"mapID" : [NSString stringWithFormat:@"%ld", (long)mapID], @"visible" : visible}};

		[self objectWithModule:@"map" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMap:(NSInteger)mapID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapID" : [NSString stringWithFormat:@"%ld", (long)mapID]}};

		[self objectWithModule:@"map" method:@"remove" attributes:attributes];
	}
}

@end
