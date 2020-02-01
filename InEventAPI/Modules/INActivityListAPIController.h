#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityListAPIController : INAPIController

#pragma mark - ActivityList
- (void)bindAuthenticatedAtList:(NSInteger)listID atActivity:(NSInteger)activityID;
- (void)dismissAuthenticatedAtList:(NSInteger)listID atActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
@end
