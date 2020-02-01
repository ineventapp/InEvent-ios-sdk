#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityChainAPIController : INAPIController

#pragma mark - ActivityChain
- (void)bindAuthenticatedAtChain:(NSInteger)chainID atActivity:(NSInteger)activityID;
- (void)dismissAuthenticatedAtChain:(NSInteger)chainID atActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findChainedActivitiesAuthenticatedAtActivity:(NSInteger)activityID;
@end
