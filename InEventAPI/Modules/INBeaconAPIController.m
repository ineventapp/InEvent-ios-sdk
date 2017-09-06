#import "INBeaconAPIController.h"

@implementation INBeaconAPIController

#pragma mark - Beacon

- (void)createAuthenticatedWithSerial:(NSString *)serial withIBeaconMinor:(NSString *)iBeaconMinor withBleAddress:(NSString *)bleAddress withWifiAddress:(NSString *)wifiAddress {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && serial != nil && iBeaconMinor != nil && bleAddress != nil && wifiAddress != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"serial" : serial, @"iBeaconMinor" : iBeaconMinor, @"bleAddress" : bleAddress, @"wifiAddress" : wifiAddress}};

		[self objectWithModule:@"beacon" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};

		[self objectWithModule:@"beacon" method:@"find" attributes:attributes];
	}
}

@end