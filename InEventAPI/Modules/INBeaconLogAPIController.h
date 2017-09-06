#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBeaconLogAPIController : INAPIController

#pragma mark - BeaconLog
- (void)bindAuthenticatedForPerson:(NSInteger)personID atBeaconAction:(NSInteger)beaconActionID;
- (void)bindAuthenticatedAtBeaconAction:(NSInteger)beaconActionID;
- (void)countAuthenticatedAtBeaconEvent:(NSInteger)beaconEventID;
- (void)countAuthenticatedAtEvent;
@end