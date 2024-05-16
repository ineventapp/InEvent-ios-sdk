#import "INCommentAPIController.h"

@implementation INCommentAPIController

#pragma mark - Comment

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withCompact:(NSString *)compact withSkipSocket:(NSString *)skipSocket withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && compact != nil && skipSocket != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"compact" : compact, @"skipSocket" : skipSocket}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"comment" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtSponsor:(NSInteger)sponsorID withCompact:(NSString *)compact withSkipSocket:(NSString *)skipSocket withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && compact != nil && skipSocket != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"compact" : compact, @"skipSocket" : skipSocket}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"comment" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtComment:(NSInteger)commentID withKey:(NSString *)key withSkipSocket:(NSString *)skipSocket withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && skipSocket != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID], @"key" : key, @"skipSocket" : skipSocket}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"comment" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtComment:(NSInteger)commentID withSkipSocket:(NSString *)skipSocket {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && skipSocket != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"commentID" : [NSString stringWithFormat:@"%ld", (long)commentID], @"skipSocket" : skipSocket}};

		[self objectWithModule:@"comment" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"comment" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrderDirection:(NSString *)orderDirection withCompact:(NSString *)compact atFirstComment:(NSInteger)firstCommentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && orderDirection != nil && compact != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"selection" : selection, @"orderDirection" : orderDirection, @"compact" : compact, @"firstCommentID" : [NSString stringWithFormat:@"%ld", (long)firstCommentID]}};

		[self objectWithModule:@"comment" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID withSelection:(NSString *)selection withOrderDirection:(NSString *)orderDirection withCompact:(NSString *)compact atFirstComment:(NSInteger)firstCommentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && orderDirection != nil && compact != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"selection" : selection, @"orderDirection" : orderDirection, @"compact" : compact, @"firstCommentID" : [NSString stringWithFormat:@"%ld", (long)firstCommentID]}};

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

- (void)hashtagsAuthenticatedAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"comment" method:@"hashtags" attributes:attributes];
	}
}

@end
