#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveTranscriptionAPIController : INAPIController

#pragma mark - LiveTranscription
- (void)createAuthenticatedAtLive:(NSInteger)liveID withText:(NSString *)text withTranslation:(NSString *)translation withStartedAtMs:(NSString *)startedAtMs withFinishedAtMs:(NSString *)finishedAtMs withDuration:(NSString *)duration;
- (void)removeAuthenticatedAtLive:(NSInteger)liveID atLiveTranscription:(NSInteger)liveTranscriptionID;
- (void)findAuthenticatedAtLive:(NSInteger)liveID;
- (void)clearAuthenticatedAtLive:(NSInteger)liveID;
- (void)startAuthenticatedAtLive:(NSInteger)liveID withEndpoint:(NSString *)endpoint;
- (void)statusAuthenticatedAtLive:(NSInteger)liveID;
- (void)stopAuthenticatedAtLive:(NSInteger)liveID;
- (void)realtimeAuthenticatedAtLive:(NSInteger)liveID;
- (void)translateAuthenticatedAtLive:(NSInteger)liveID withTranscriptionId:(NSString *)transcriptionId withText:(NSString *)text;
@end
