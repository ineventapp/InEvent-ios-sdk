#import "INPhotoAPIController.h"

@implementation INPhotoAPIController

#pragma mark - Photo

- (void)createAuthenticatedAtEventWithUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"url" : url}};

		[self objectWithModule:@"photo" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtPhoto:(NSInteger)photoID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID]}};

		[self objectWithModule:@"photo" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"photo" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtPhoto:(NSInteger)photoID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID]}};

		[self objectWithModule:@"photo" method:@"get" attributes:attributes];
	}
}

@end