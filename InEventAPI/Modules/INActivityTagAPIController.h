#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityTagAPIController : INAPIController

#pragma mark - ActivityTag
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID atTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID atTag:(NSInteger)tagID;
- (void)findAtActivity:(NSInteger)activityID;
@end