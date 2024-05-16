#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveRtmpAPIController : INAPIController

#pragma mark - LiveRtmp
- (void)bindAuthenticatedAtLive:(NSInteger)liveID withTitle:(NSString *)title;
- (void)dismissAuthenticatedAtLive:(NSInteger)liveID atLiveRtmpTrack:(NSInteger)liveRtmpTrackID;
- (void)findAuthenticatedAtLive:(NSInteger)liveID;
@end
