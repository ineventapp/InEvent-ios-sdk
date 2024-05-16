#import "INLiveTranscriptionAPIController.h"

@implementation INLiveTranscriptionAPIController

#pragma mark - LiveTranscription

- (void)createAuthenticatedAtLive:(NSInteger)liveID withText:(NSString *)text withTranslation:(NSString *)translation withStartedAtMs:(NSString *)startedAtMs withFinishedAtMs:(NSString *)finishedAtMs withDuration:(NSString *)duration {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil && translation != nil && startedAtMs != nil && finishedAtMs != nil && duration != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"text" : text, @"translation" : translation, @"startedAtMs" : startedAtMs, @"finishedAtMs" : finishedAtMs, @"duration" : duration}};

		[self objectWithModule:@"live.transcription" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLive:(NSInteger)liveID atLiveTranscription:(NSInteger)liveTranscriptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"liveTranscriptionID" : [NSString stringWithFormat:@"%ld", (long)liveTranscriptionID]}};

		[self objectWithModule:@"live.transcription" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.transcription" method:@"find" attributes:attributes];
	}
}

- (void)clearAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.transcription" method:@"clear" attributes:attributes];
	}
}

- (void)startAuthenticatedAtLive:(NSInteger)liveID withEndpoint:(NSString *)endpoint {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && endpoint != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"endpoint" : endpoint}};

		[self objectWithModule:@"live.transcription" method:@"start" attributes:attributes];
	}
}

- (void)statusAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.transcription" method:@"status" attributes:attributes];
	}
}

- (void)stopAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.transcription" method:@"stop" attributes:attributes];
	}
}

- (void)realtimeAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.transcription" method:@"realtime" attributes:attributes];
	}
}

- (void)translateAuthenticatedAtLive:(NSInteger)liveID withTranscriptionId:(NSString *)transcriptionId withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && transcriptionId != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"transcriptionId" : transcriptionId, @"text" : text}};

		[self objectWithModule:@"live.transcription" method:@"translate" attributes:attributes];
	}
}

@end
