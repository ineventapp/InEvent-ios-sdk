#import "INAdAPIController.h"

@implementation INAdAPIController

#pragma mark - Ad

- (void)createAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"ad" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtAd:(NSInteger)adID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"adID" : [NSString stringWithFormat:@"%ld", (long)adID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"ad" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtAd:(NSInteger)adID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"adID" : [NSString stringWithFormat:@"%ld", (long)adID]}};

		[self objectWithModule:@"ad" method:@"remove" attributes:attributes];
	}
}

- (void)findAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"ad" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithSelection:(NSString *)selection {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"ad" method:@"find" attributes:attributes];
	}
}

@end