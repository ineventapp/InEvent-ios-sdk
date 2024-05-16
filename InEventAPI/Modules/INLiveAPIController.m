#import "INLiveAPIController.h"

@implementation INLiveAPIController

#pragma mark - Live

- (void)createRoomAuthenticatedAtEventForPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"live" method:@"createRoom" attributes:attributes];
	}
}

- (void)authRoomAuthenticatedAtEventWithRoomId:(NSString *)roomId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && roomId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"roomId" : roomId}};

		[self objectWithModule:@"live" method:@"authRoom" attributes:attributes];
	}
}

- (void)editAuthenticatedAtLive:(NSInteger)liveID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"live" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"live" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithLiveToken:(NSString *)liveToken atLive:(NSInteger)liveID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && liveToken != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveToken" : liveToken, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"live" method:@"get" attributes:attributes];
	}
}

- (void)leaveAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"live" method:@"leave" attributes:attributes];
	}
}

- (void)startRecordingAuthenticatedAtEventAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"startRecording" attributes:attributes];
	}
}

- (void)updateRecordingAuthenticatedAtEventAtLive:(NSInteger)liveID forPerson:(NSInteger)personID withMultiple:(NSString *)multiple {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && multiple != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"multiple" : multiple}};

		[self objectWithModule:@"live" method:@"updateRecording" attributes:attributes];
	}
}

- (void)updateRecordingVideoConferencingAuthenticatedAtEventAtLive:(NSInteger)liveID withWebRtcLayoutToken:(NSString *)webRtcLayoutToken withScreenShareStreamId:(NSString *)screenShareStreamId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && webRtcLayoutToken != nil && screenShareStreamId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"webRtcLayoutToken" : webRtcLayoutToken, @"screenShareStreamId" : screenShareStreamId}};

		[self objectWithModule:@"live" method:@"updateRecordingVideoConferencing" attributes:attributes];
	}
}

- (void)createSimulcastAuthenticatedAtEventAtLive:(NSInteger)liveID withStreamName:(NSString *)streamName withStreamKey:(NSString *)streamKey withStreamURL:(NSString *)streamURL {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && streamName != nil && streamKey != nil && streamURL != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"streamName" : streamName, @"streamKey" : streamKey, @"streamURL" : streamURL}};

		[self objectWithModule:@"live" method:@"createSimulcast" attributes:attributes];
	}
}

- (void)findSimulcastsAuthenticatedAtEventAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"findSimulcasts" attributes:attributes];
	}
}

- (void)removeSimulcastAuthenticatedAtEventAtLive:(NSInteger)liveID withSimulcastId:(NSString *)simulcastId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && simulcastId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"simulcastId" : simulcastId}};

		[self objectWithModule:@"live" method:@"removeSimulcast" attributes:attributes];
	}
}

- (void)startLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID withLayout:(NSString *)layout {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && layout != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"layout" : layout}};

		[self objectWithModule:@"live" method:@"startLiveStreaming" attributes:attributes];
	}
}

- (void)reloadLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"reloadLiveStreaming" attributes:attributes];
	}
}

- (void)isLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"isLiveStreaming" attributes:attributes];
	}
}

- (void)stopLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"stopLiveStreaming" attributes:attributes];
	}
}

- (void)updateLiveStreamingAuthenticatedAtEventAtLive:(NSInteger)liveID withLayout:(NSString *)layout atStream:(NSInteger)streamID withLayoutClass:(NSString *)layoutClass {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && layout != nil && layoutClass != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"layout" : layout}, @"POST" : @{@"streamID" : [NSString stringWithFormat:@"%ld", (long)streamID], @"layoutClass" : layoutClass}};

		[self objectWithModule:@"live" method:@"updateLiveStreaming" attributes:attributes];
	}
}

- (void)findTranscriptionsAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"findTranscriptions" attributes:attributes];
	}
}

- (void)removeTranscriptionsAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"removeTranscriptions" attributes:attributes];
	}
}

- (void)enableMuxLowLatencyAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"enableMuxLowLatency" attributes:attributes];
	}
}

- (void)disableMuxLowLatencyAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"disableMuxLowLatency" attributes:attributes];
	}
}

- (void)enableIvsAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"enableIvs" attributes:attributes];
	}
}

- (void)disableIvsAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"disableIvs" attributes:attributes];
	}
}

- (void)analyticsFindAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && order != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"order" : order, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"live" method:@"analyticsFind" attributes:attributes];
	}
}

- (void)analyticsGetAuthenticatedAtEventAtLive:(NSInteger)liveID withGroupBy:(NSString *)groupBy {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && groupBy != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"groupBy" : groupBy}};

		[self objectWithModule:@"live" method:@"analyticsGet" attributes:attributes];
	}
}

- (void)checkOnDemandReadyAuthenticatedAtEventAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"checkOnDemandReady" attributes:attributes];
	}
}

- (void)clearAnalyticsAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"clearAnalytics" attributes:attributes];
	}
}

- (void)sendSipTTSAuthenticatedAtLive:(NSInteger)liveID withJwt:(NSString *)jwt withTts:(NSString *)tts {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && jwt != nil && tts != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"jwt" : jwt, @"tts" : tts}};

		[self objectWithModule:@"live" method:@"sendSipTTS" attributes:attributes];
	}
}

- (void)closeSipAuthenticatedAtLive:(NSInteger)liveID withConnectionId:(NSString *)connectionId withJwt:(NSString *)jwt {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && connectionId != nil && jwt != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"connectionId" : connectionId}, @"POST" : @{@"jwt" : jwt}};

		[self objectWithModule:@"live" method:@"closeSip" attributes:attributes];
	}
}

- (void)dialOutSipAuthenticatedAtLive:(NSInteger)liveID withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"url" : url}};

		[self objectWithModule:@"live" method:@"dialOutSip" attributes:attributes];
	}
}

- (void)closeOpentokConnectionAuthenticatedAtLive:(NSInteger)liveID withConnectionId:(NSString *)connectionId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && connectionId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"connectionId" : connectionId}};

		[self objectWithModule:@"live" method:@"closeOpentokConnection" attributes:attributes];
	}
}

- (void)enableCCAuthenticatedAtLive:(NSInteger)liveID withEmbedded:(NSString *)embedded withLanguage:(NSString *)language {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && embedded != nil && language != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"embedded" : embedded, @"language" : language}};

		[self objectWithModule:@"live" method:@"enableCC" attributes:attributes];
	}
}

- (void)disableCCAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live" method:@"disableCC" attributes:attributes];
	}
}

@end
