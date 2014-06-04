#import "INPhotoAPIController.h"

@implementation INPhotoAPIController

#pragma mark - Photo

- (void)createAuthenticatedAtEventWithUrl:(NSString *)url {

	if (url != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"url" : url}};

		[self JSONObjectWithModule:@"photo" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"photo" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtPhoto:(NSInteger)photoID {

	NSDictionary *attributes = @{@"GET" : @{@"photoID" : [NSString stringWithFormat:@"%d", photoID]}};

	[self JSONObjectWithModule:@"photo" method:@"get" attributes:attributes];
}

@end