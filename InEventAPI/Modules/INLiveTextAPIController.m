#import "INLiveTextAPIController.h"

@implementation INLiveTextAPIController

#pragma mark - LiveText

- (void)createAuthenticatedAtEventAtLive:(NSInteger)liveID withLanguage:(NSString *)language withTrack:(NSString *)track withKind:(NSString *)kind {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && language != nil && track != nil && kind != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"eventID" : eventID}, @"POST" : @{@"language" : language, @"track" : track, @"kind" : kind}};

		[self objectWithModule:@"live.text" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLive:(NSInteger)liveID atLiveTextTrack:(NSInteger)liveTextTrackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"liveTextTrackID" : [NSString stringWithFormat:@"%ld", (long)liveTextTrackID]}};

		[self objectWithModule:@"live.text" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLive:(NSInteger)liveID withKind:(NSString *)kind {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && kind != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"kind" : kind}};

		[self objectWithModule:@"live.text" method:@"find" attributes:attributes];
	}
}

@end
