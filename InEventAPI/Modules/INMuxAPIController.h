#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMuxAPIController : INAPIController

#pragma mark - Mux
- (void)getAuthenticatedAtLive:(NSInteger)liveID;
- (void)createDirectUploadAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID;
- (void)checkVodStatusAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID;
- (void)checkVodStatusForAssetsAuthenticatedAtEventWithType:(NSString *)type;
@end
