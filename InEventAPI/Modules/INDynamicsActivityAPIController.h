#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDynamicsActivityAPIController : INAPIController

#pragma mark - DynamicsActivity
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withMsdSessionId:(NSString *)msdSessionId;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEvent;
@end
