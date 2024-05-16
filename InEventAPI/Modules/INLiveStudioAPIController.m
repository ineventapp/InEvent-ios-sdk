#import "INLiveStudioAPIController.h"

@implementation INLiveStudioAPIController

#pragma mark - LiveStudio

- (void)editAuthenticatedAtLive:(NSInteger)liveID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"live.studio" method:@"edit" attributes:attributes];
	}
}

@end
