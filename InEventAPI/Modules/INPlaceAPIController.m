#import "INPlaceAPIController.h"

@implementation INPlaceAPIController

#pragma mark - Place

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withCategory:(NSString *)category withCapacity:(NSString *)capacity withRestricted:(NSString *)restricted {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && category != nil && capacity != nil && restricted != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"category" : category, @"capacity" : capacity, @"restricted" : restricted}};

		[self objectWithModule:@"place" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithName:(NSString *)name withCategory:(NSString *)category withCapacity:(NSString *)capacity withRestricted:(NSString *)restricted {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && category != nil && capacity != nil && restricted != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"category" : category, @"capacity" : capacity, @"restricted" : restricted}};

		[self objectWithModule:@"place" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtPlace:(NSInteger)placeID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"place" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtPlace:(NSInteger)placeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID]}};

		[self objectWithModule:@"place" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"place" method:@"find" attributes:attributes];
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

- (void)findCategoriesAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"place" method:@"findCategories" attributes:attributes];
	}
}

- (void)findCategoriesAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"place" method:@"findCategories" attributes:attributes];
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
