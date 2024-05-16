#import "INMapItemAPIController.h"

@implementation INMapItemAPIController

#pragma mark - MapItem

- (void)createAuthenticatedAtMap:(NSInteger)mapID atMapItem:(NSInteger)mapItemID withPlaces:(NSString *)places withPlace:(NSString *)place withStruct:(NSString *)struct withPoint:(NSString *)point withPaths:(NSString *)paths withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && places != nil && place != nil && struct != nil && point != nil && paths != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapID" : [NSString stringWithFormat:@"%ld", (long)mapID], @"mapItemID" : [NSString stringWithFormat:@"%ld", (long)mapItemID]}, @"POST" : @{@"places" : places, @"place" : place, @"struct" : struct, @"point" : point, @"paths" : paths, @"path" : path}};

		[self objectWithModule:@"map.item" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMapItem:(NSInteger)mapItemID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapItemID" : [NSString stringWithFormat:@"%ld", (long)mapItemID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"map.item" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMapItem:(NSInteger)mapItemID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapItemID" : [NSString stringWithFormat:@"%ld", (long)mapItemID]}};

		[self objectWithModule:@"map.item" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"map.item" method:@"find" attributes:attributes];
	}
}

- (void)favoriteAuthenticatedAtEventAtMap:(NSInteger)mapID atMapItem:(NSInteger)mapItemID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"mapID" : [NSString stringWithFormat:@"%ld", (long)mapID], @"mapItemID" : [NSString stringWithFormat:@"%ld", (long)mapItemID]}};

		[self objectWithModule:@"map.item" method:@"favorite" attributes:attributes];
	}
}

@end
