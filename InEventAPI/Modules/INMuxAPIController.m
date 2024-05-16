#import "INMuxAPIController.h"

@implementation INMuxAPIController

#pragma mark - Mux

- (void)getAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"mux" method:@"get" attributes:attributes];
	}
}

- (void)createDirectUploadAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID]}};

		[self objectWithModule:@"mux" method:@"createDirectUpload" attributes:attributes];
	}
}

- (void)checkVodStatusAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID]}};

		[self objectWithModule:@"mux" method:@"checkVodStatus" attributes:attributes];
	}
}

- (void)checkVodStatusForAssetsAuthenticatedAtEventWithType:(NSString *)type {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"type" : type}};

		[self objectWithModule:@"mux" method:@"checkVodStatusForAssets" attributes:attributes];
	}
}

@end
