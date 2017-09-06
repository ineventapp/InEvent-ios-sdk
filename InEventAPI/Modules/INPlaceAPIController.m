#import "INPlaceAPIController.h"

@implementation INPlaceAPIController

#pragma mark - Place

- (void)createAuthenticatedAtEventWithName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name}};

		[self objectWithModule:@"place" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtPlace:(NSInteger)placeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID]}};

		[self objectWithModule:@"place" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"place" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtPlace:(NSInteger)placeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID]}};

		[self objectWithModule:@"place" method:@"get" attributes:attributes];
	}
}

@end