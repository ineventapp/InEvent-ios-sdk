#import "INLiveRtmpAPIController.h"

@implementation INLiveRtmpAPIController

#pragma mark - LiveRtmp

- (void)bindAuthenticatedAtLive:(NSInteger)liveID withTitle:(NSString *)title {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && title != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"title" : title}};

		[self objectWithModule:@"live.rtmp" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtLive:(NSInteger)liveID atLiveRtmpTrack:(NSInteger)liveRtmpTrackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"liveRtmpTrackID" : [NSString stringWithFormat:@"%ld", (long)liveRtmpTrackID]}};

		[self objectWithModule:@"live.rtmp" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.rtmp" method:@"find" attributes:attributes];
	}
}

@end
