#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveRecordingAPIController : INAPIController

#pragma mark - LiveRecording
- (void)removeAuthenticatedAtLive:(NSInteger)liveID atLiveRecording:(NSInteger)liveRecordingID;
- (void)findAuthenticatedAtLive:(NSInteger)liveID;
- (void)convertAuthenticatedAtLive:(NSInteger)liveID;
- (void)convertAuthenticatedAtLive:(NSInteger)liveID atLiveRecording:(NSInteger)liveRecordingID;
- (void)rawUpdateAuthenticatedAtLive:(NSInteger)liveID withFolder:(NSString *)folder withKey:(NSString *)key withValue:(NSString *)value;
- (void)rawConvertAuthenticatedAtMemberRecording:(NSInteger)memberRecordingID;
- (void)rawDeleteAuthenticatedAtMemberRecording:(NSInteger)memberRecordingID;
@end
