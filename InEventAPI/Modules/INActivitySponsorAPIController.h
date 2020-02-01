#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivitySponsorAPIController : INAPIController

#pragma mark - ActivitySponsor
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID atSponsor:(NSInteger)sponsorID;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID atSponsor:(NSInteger)sponsorID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
@end
