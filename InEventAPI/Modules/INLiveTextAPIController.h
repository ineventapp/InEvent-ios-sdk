#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveTextAPIController : INAPIController

#pragma mark - LiveText
- (void)createAuthenticatedAtEventAtLive:(NSInteger)liveID withLanguage:(NSString *)language withTrack:(NSString *)track withKind:(NSString *)kind;
- (void)removeAuthenticatedAtLive:(NSInteger)liveID atLiveTextTrack:(NSInteger)liveTextTrackID;
- (void)findAuthenticatedAtLive:(NSInteger)liveID withKind:(NSString *)kind;
@end
