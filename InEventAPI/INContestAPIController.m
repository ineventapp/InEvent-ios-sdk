#import "INContestAPIController.h"

@implementation INContestAPIController

#pragma mark - Contest

- (void)requestAddressAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"contest" method:@"requestAddress" attributes:attributes];
}

- (void)informAddressAuthenticatedAtEventWithUrl:(NSString *)url {

	if (url != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"url" : url}};

		[self JSONObjectWithModule:@"contest" method:@"informAddress" attributes:attributes];
	}
}

@end