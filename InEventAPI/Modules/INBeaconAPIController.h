#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBeaconAPIController : INAPIController

#pragma mark - Beacon
- (void)createAuthenticatedWithSerial:(NSString *)serial withIBeaconMinor:(NSString *)iBeaconMinor withBleAddress:(NSString *)bleAddress withWifiAddress:(NSString *)wifiAddress;
- (void)findAuthenticated;
@end