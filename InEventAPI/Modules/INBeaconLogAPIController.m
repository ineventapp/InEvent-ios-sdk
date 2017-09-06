#import "INBeaconLogAPIController.h"

@implementation INBeaconLogAPIController

#pragma mark - BeaconLog

- (void)bindAuthenticatedForPerson:(NSInteger)personID atBeaconAction:(NSInteger)beaconActionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"beaconActionID" : [NSString stringWithFormat:@"%ld", (long)beaconActionID]}};

		[self objectWithModule:@"beacon.log" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtBeaconAction:(NSInteger)beaconActionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"beaconActionID" : [NSString stringWithFormat:@"%ld", (long)beaconActionID]}};

		[self objectWithModule:@"beacon.log" method:@"bind" attributes:attributes];
	}
}

- (void)countAuthenticatedAtBeaconEvent:(NSInteger)beaconEventID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"beaconEventID" : [NSString stringWithFormat:@"%ld", (long)beaconEventID]}};

		[self objectWithModule:@"beacon.log" method:@"count" attributes:attributes];
	}
}

- (void)countAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"beacon.log" method:@"count" attributes:attributes];
	}
}

@end