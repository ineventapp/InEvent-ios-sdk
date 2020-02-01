#import "INBeaconActionAPIController.h"

@implementation INBeaconActionAPIController

#pragma mark - BeaconAction

- (void)bindAuthenticatedAtBeaconEvent:(NSInteger)beaconEventID withType:(NSString *)type withRange:(NSString *)range withExtra:(NSString *)extra withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && type != nil && range != nil && extra != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"beaconEventID" : [NSString stringWithFormat:@"%ld", (long)beaconEventID]}, @"POST" : @{@"type" : type, @"range" : range, @"extra" : extra, @"name" : name}};

		[self objectWithModule:@"beacon.action" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithMinor:(NSString *)minor withType:(NSString *)type withRange:(NSString *)range withExtra:(NSString *)extra withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && minor != nil && type != nil && range != nil && extra != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"minor" : minor}, @"POST" : @{@"type" : type, @"range" : range, @"extra" : extra, @"name" : name}};

		[self objectWithModule:@"beacon.action" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtBeaconAction:(NSInteger)beaconActionID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"beaconActionID" : [NSString stringWithFormat:@"%ld", (long)beaconActionID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"beacon.action" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtBeaconAction:(NSInteger)beaconActionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"beaconActionID" : [NSString stringWithFormat:@"%ld", (long)beaconActionID]}};

		[self objectWithModule:@"beacon.action" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtBeaconEvent:(NSInteger)beaconEventID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"beaconEventID" : [NSString stringWithFormat:@"%ld", (long)beaconEventID]}};

		[self objectWithModule:@"beacon.action" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"beacon.action" method:@"find" attributes:attributes];
	}
}

@end
