#import "INLiveRecordingAPIController.h"

@implementation INLiveRecordingAPIController

#pragma mark - LiveRecording

- (void)removeAuthenticatedAtLive:(NSInteger)liveID atLiveRecording:(NSInteger)liveRecordingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"liveRecordingID" : [NSString stringWithFormat:@"%ld", (long)liveRecordingID]}};

		[self objectWithModule:@"live.recording" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.recording" method:@"find" attributes:attributes];
	}
}

- (void)convertAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.recording" method:@"convert" attributes:attributes];
	}
}

- (void)convertAuthenticatedAtLive:(NSInteger)liveID atLiveRecording:(NSInteger)liveRecordingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"liveRecordingID" : [NSString stringWithFormat:@"%ld", (long)liveRecordingID]}};

		[self objectWithModule:@"live.recording" method:@"convert" attributes:attributes];
	}
}

- (void)rawUpdateAuthenticatedAtLive:(NSInteger)liveID withFolder:(NSString *)folder withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && folder != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"folder" : folder, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"live.recording" method:@"rawUpdate" attributes:attributes];
	}
}

- (void)rawConvertAuthenticatedAtMemberRecording:(NSInteger)memberRecordingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"memberRecordingID" : [NSString stringWithFormat:@"%ld", (long)memberRecordingID]}};

		[self objectWithModule:@"live.recording" method:@"rawConvert" attributes:attributes];
	}
}

- (void)rawDeleteAuthenticatedAtMemberRecording:(NSInteger)memberRecordingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"memberRecordingID" : [NSString stringWithFormat:@"%ld", (long)memberRecordingID]}};

		[self objectWithModule:@"live.recording" method:@"rawDelete" attributes:attributes];
	}
}

@end
