#import "INCommentAPIController.h"

@implementation INCommentAPIController

#pragma mark - Comment

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"comment" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtComment:(NSInteger)commentID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"comment" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtComment:(NSInteger)commentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID]}};

		[self objectWithModule:@"comment" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"selection" : selection}};

		[self objectWithModule:@"comment" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtComment:(NSInteger)commentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID]}};

		[self objectWithModule:@"comment" method:@"get" attributes:attributes];
	}
}

- (void)hashtagsAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"comment" method:@"hashtags" attributes:attributes];
	}
}

@end