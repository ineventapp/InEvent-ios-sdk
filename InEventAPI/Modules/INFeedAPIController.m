#import "INFeedAPIController.h"

@implementation INFeedAPIController

#pragma mark - Feed

- (void)createAuthenticatedAtEventWithText:(NSString *)text withPicture:(NSString *)picture withVideo:(NSString *)video withExternalUrl:(NSString *)externalUrl {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && text != nil && picture != nil && video != nil && externalUrl != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"text" : text, @"picture" : picture, @"video" : video, @"externalUrl" : externalUrl}};

		[self objectWithModule:@"feed" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtFeed:(NSInteger)feedID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"feed" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query}};

		[self objectWithModule:@"feed" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithQuery:(NSString *)query {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"query" : query}};

		[self objectWithModule:@"feed" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed" method:@"get" attributes:attributes];
	}
}

- (void)shareAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed" method:@"share" attributes:attributes];
	}
}

- (void)likeAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed" method:@"like" attributes:attributes];
	}
}

- (void)unlikeAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed" method:@"unlike" attributes:attributes];
	}
}

- (void)reportAuthenticatedAtFeed:(NSInteger)feedID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedID" : [NSString stringWithFormat:@"%ld", (long)feedID]}};

		[self objectWithModule:@"feed" method:@"report" attributes:attributes];
	}
}

- (void)previewAuthenticatedAtEventWithUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"url" : url}};

		[self objectWithModule:@"feed" method:@"preview" attributes:attributes];
	}
}

@end
