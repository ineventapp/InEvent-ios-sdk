#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBeaconActionAPIController : INAPIController

#pragma mark - BeaconAction
- (void)bindAuthenticatedAtBeaconEvent:(NSInteger)beaconEventID withType:(NSString *)type withRange:(NSString *)range withExtra:(NSString *)extra withName:(NSString *)name;
- (void)bindAuthenticatedAtEventWithMinor:(NSString *)minor withType:(NSString *)type withRange:(NSString *)range withExtra:(NSString *)extra withName:(NSString *)name;
- (void)operateAuthenticatedAtBeaconAction:(NSInteger)beaconActionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtBeaconAction:(NSInteger)beaconActionID;
- (void)findAuthenticatedAtBeaconEvent:(NSInteger)beaconEventID;
- (void)findAuthenticatedAtEvent;
@end