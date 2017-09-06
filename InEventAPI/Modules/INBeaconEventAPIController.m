#import "INBeaconEventAPIController.h"

@implementation INBeaconEventAPIController

#pragma mark - BeaconEvent

- (void)bindAuthenticatedAtEventAtBeacon:(NSInteger)beaconID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"beaconID" : [NSString stringWithFormat:@"%ld", (long)beaconID]}};

		[self objectWithModule:@"beacon.event" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithMinor:(NSString *)minor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && minor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"minor" : minor}};

		[self objectWithModule:@"beacon.event" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtBeacon:(NSInteger)beaconID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"beaconID" : [NSString stringWithFormat:@"%ld", (long)beaconID]}};

		[self objectWithModule:@"beacon.event" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithMinor:(NSString *)minor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && minor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"minor" : minor}};

		[self objectWithModule:@"beacon.event" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"beacon.event" method:@"find" attributes:attributes];
	}
}

@end