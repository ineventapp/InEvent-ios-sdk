#import "INPhotoTagAPIController.h"

@implementation INPhotoTagAPIController

#pragma mark - PhotoTag

- (void)bindAuthenticatedAtPhoto:(NSInteger)photoID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"photo.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtPhoto:(NSInteger)photoID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"photo.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtPhoto:(NSInteger)photoID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID]}};

		[self objectWithModule:@"photo.tag" method:@"find" attributes:attributes];
	}
}

@end
