#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveAPIController : INAPIController

#pragma mark - Live
- (void)createRoomAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)authRoomAuthenticatedAtEventWithRoomId:(NSString *)roomId;
- (void)editAuthenticatedAtLive:(NSInteger)liveID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtLive:(NSInteger)liveID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtEventWithLiveToken:(NSString *)liveToken atLive:(NSInteger)liveID forPerson:(NSInteger)personID;
- (void)leaveAuthenticatedAtEvent;
- (void)startRecordingAuthenticatedAtEventAtLive:(NSInteger)liveID;
- (void)updateRecordingAuthenticatedAtEventAtLive:(NSInteger)liveID forPerson:(NSInteger)personID withMultiple:(NSString *)multiple;
- (void)updateRecordingVideoConferencingAuthenticatedAtEventAtLive:(NSInteger)liveID withWebRtcLayoutToken:(NSString *)webRtcLayoutToken withScreenShareStreamId:(NSString *)screenShareStreamId;
- (void)createSimulcastAuthenticatedAtEventAtLive:(NSInteger)liveID withStreamName:(NSString *)streamName withStreamKey:(NSString *)streamKey withStreamURL:(NSString *)streamURL;
- (void)findSimulcastsAuthenticatedAtEventAtLive:(NSInteger)liveID;
- (void)removeSimulcastAuthenticatedAtEventAtLive:(NSInteger)liveID withSimulcastId:(NSString *)simulcastId;
- (void)startLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID withLayout:(NSString *)layout;
- (void)reloadLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID;
- (void)isLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID;
- (void)stopLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID;
- (void)updateLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID withLayout:(NSString *)layout atStream:(NSInteger)streamID withLayoutClass:(NSString *)layoutClass;
- (void)findTranscriptionsAuthenticatedAtLive:(NSInteger)liveID;
- (void)removeTranscriptionsAuthenticatedAtLive:(NSInteger)liveID;
- (void)enableMuxLowLatencyAuthenticatedAtLive:(NSInteger)liveID;
- (void)disableMuxLowLatencyAuthenticatedAtLive:(NSInteger)liveID;
- (void)enableIvsAuthenticatedAtLive:(NSInteger)liveID;
- (void)disableIvsAuthenticatedAtLive:(NSInteger)liveID;
- (void)analyticsFindAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)analyticsGetAuthenticatedAtEventAtLive:(NSInteger)liveID withGroupBy:(NSString *)groupBy;
- (void)checkOnDemandReadyAuthenticatedAtEventAtLive:(NSInteger)liveID;
- (void)clearAnalyticsAuthenticatedAtLive:(NSInteger)liveID;
- (void)sendSipTTSAuthenticatedAtLive:(NSInteger)liveID withJwt:(NSString *)jwt withTts:(NSString *)tts;
- (void)closeSipAuthenticatedAtLive:(NSInteger)liveID withConnectionId:(NSString *)connectionId withJwt:(NSString *)jwt;
- (void)dialOutSipAuthenticatedAtLive:(NSInteger)liveID withUrl:(NSString *)url;
- (void)closeOpentokConnectionAuthenticatedAtLive:(NSInteger)liveID withConnectionId:(NSString *)connectionId;
- (void)enableCCAuthenticatedAtLive:(NSInteger)liveID withEmbedded:(NSString *)embedded withLanguage:(NSString *)language;
- (void)disableCCAuthenticatedAtLive:(NSInteger)liveID;
@end
