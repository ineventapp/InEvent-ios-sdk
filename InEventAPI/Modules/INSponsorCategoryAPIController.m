#import "INSponsorCategoryAPIController.h"

@implementation INSponsorCategoryAPIController

#pragma mark - SponsorCategory

- (void)createAuthenticatedAtEventWithName:(NSString *)name withPosition:(NSString *)position {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && position != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"position" : position}};

		[self objectWithModule:@"sponsor.category" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventAtSponsorCategory:(NSInteger)sponsorCategoryID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorCategoryID" : [NSString stringWithFormat:@"%ld", (long)sponsorCategoryID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"sponsor.category" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtSponsorCategory:(NSInteger)sponsorCategoryID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorCategoryID" : [NSString stringWithFormat:@"%ld", (long)sponsorCategoryID]}};

		[self objectWithModule:@"sponsor.category" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"name" : name}};

		[self objectWithModule:@"sponsor.category" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"sponsor.category" method:@"find" attributes:attributes];
	}
}

@end
