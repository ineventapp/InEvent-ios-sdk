#import "INFeedCommentAPIController.h"

@implementation INFeedCommentAPIController

#pragma mark - FeedComment

- (void)createAuthenticatedAtFeed:(NSInteger)feedID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"feed.comment" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtFeedComment:(NSInteger)feedCommentID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedCommentID" : [NSString stringWithFormat:@"%ld", (long)feedCommentID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"feed.comment" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFeedComment:(NSInteger)feedCommentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedCommentID" : [NSString stringWithFormat:@"%ld", (long)feedCommentID]}};

		[self objectWithModule:@"feed.comment" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed.comment" method:@"find" attributes:attributes];
	}
}

- (void)reportAuthenticatedAtFeedComment:(NSInteger)feedCommentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedCommentID" : [NSString stringWithFormat:@"%ld", (long)feedCommentID]}};

		[self objectWithModule:@"feed.comment" method:@"report" attributes:attributes];
	}
}

@end
