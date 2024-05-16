#import "INQuestionAPIController.h"

@implementation INQuestionAPIController

#pragma mark - Question

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"question" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtActivity:(NSInteger)activityID atLive:(NSInteger)liveID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"question" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtQuestion:(NSInteger)questionID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"question" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtQuestion:(NSInteger)questionID atLive:(NSInteger)liveID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID], @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"question" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID atLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID], @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"question" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID]}};

		[self objectWithModule:@"question" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"selection" : selection}};

		[self objectWithModule:@"question" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"question" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"question" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtQuestion:(NSInteger)questionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID]}};

		[self objectWithModule:@"question" method:@"get" attributes:attributes];
	}
}

- (void)upvoteAuthenticatedAtQuestion:(NSInteger)questionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID]}};

		[self objectWithModule:@"question" method:@"upvote" attributes:attributes];
	}
}

- (void)downvoteAuthenticatedAtQuestion:(NSInteger)questionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID]}};

		[self objectWithModule:@"question" method:@"downvote" attributes:attributes];
	}
}

- (void)replyAuthenticatedAtQuestion:(NSInteger)questionID withAnswer:(NSString *)answer {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && answer != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%ld", (long)questionID]}, @"POST" : @{@"answer" : answer}};

		[self objectWithModule:@"question" method:@"reply" attributes:attributes];
	}
}

@end
