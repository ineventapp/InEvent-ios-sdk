#import "INHiveEventAPIController.h"

@implementation INHiveEventAPIController

#pragma mark - HiveEvent

- (void)bindAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"hive.event" method:@"bind" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"hive.event" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtLive:(NSInteger)liveID withManifest:(NSString *)manifest {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && manifest != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"manifest" : manifest}};

		[self objectWithModule:@"hive.event" method:@"get" attributes:attributes];
	}
}

@end
