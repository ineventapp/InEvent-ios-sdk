#import "INLodgingAPIController.h"

@implementation INLodgingAPIController

#pragma mark - Lodging

- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withCapacity:(NSString *)capacity withPrice:(NSString *)price withAddress:(NSString *)address {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && description != nil && capacity != nil && price != nil && address != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"description" : description, @"capacity" : capacity, @"price" : price, @"address" : address}};

		[self objectWithModule:@"lodging" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"lodging" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtLodging:(NSInteger)lodgingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"lodging" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"lodging" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtLodging:(NSInteger)lodgingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"lodgingID" : [NSString stringWithFormat:@"%ld", (long)lodgingID]}};

		[self objectWithModule:@"lodging" method:@"get" attributes:attributes];
	}
}

@end