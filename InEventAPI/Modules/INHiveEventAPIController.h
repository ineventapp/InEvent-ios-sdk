#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHiveEventAPIController : INAPIController

#pragma mark - HiveEvent
- (void)bindAuthenticatedAtLive:(NSInteger)liveID;
- (void)findAuthenticatedAtLive:(NSInteger)liveID;
- (void)getAuthenticatedAtLive:(NSInteger)liveID withManifest:(NSString *)manifest;
@end
