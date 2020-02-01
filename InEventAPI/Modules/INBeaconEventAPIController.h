#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBeaconEventAPIController : INAPIController

#pragma mark - BeaconEvent
- (void)bindAuthenticatedAtEventAtBeacon:(NSInteger)beaconID;
- (void)bindAuthenticatedAtEventWithMinor:(NSString *)minor;
- (void)dismissAuthenticatedAtEventAtBeacon:(NSInteger)beaconID;
- (void)dismissAuthenticatedAtEventWithMinor:(NSString *)minor;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
@end
