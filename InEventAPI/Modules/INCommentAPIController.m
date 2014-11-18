#import "INCommentAPIController.h"

@implementation INCommentAPIController

#pragma mark - Comment

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text {

	if (text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"comment" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtComment:(NSInteger)commentID {

	NSDictionary *attributes = @{@"GET" : @{@"commentID" : [NSString stringWithFormat:@"%d", commentID]}};

	[self JSONObjectWithModule:@"comment" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"comment" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtComment:(NSInteger)commentID {

	NSDictionary *attributes = @{@"GET" : @{@"commentID" : [NSString stringWithFormat:@"%d", commentID]}};

	[self JSONObjectWithModule:@"comment" method:@"get" attributes:attributes];
}

@end