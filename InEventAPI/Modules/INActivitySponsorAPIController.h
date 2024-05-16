#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivitySponsorAPIController : INAPIController

#pragma mark - ActivitySponsor
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID atSponsor:(NSInteger)sponsorID;
- (void)operateAuthenticatedAtActivity:(NSInteger)activityID atSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID atSponsor:(NSInteger)sponsorID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
@end
