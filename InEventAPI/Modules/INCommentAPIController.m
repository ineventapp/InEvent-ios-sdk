#import "INCommentAPIController.h"

@implementation INCommentAPIController

#pragma mark - Comment

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"comment" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtComment:(NSInteger)commentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID]}};

		[self JSONObjectWithModule:@"comment" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self JSONObjectWithModule:@"comment" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtComment:(NSInteger)commentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID]}};

		[self JSONObjectWithModule:@"comment" method:@"get" attributes:attributes];
	}
}

@end