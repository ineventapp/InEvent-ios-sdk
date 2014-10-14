#import "INQuestionAPIController.h"

@implementation INQuestionAPIController

#pragma mark - Question

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text {

	if (text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"question" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID {

	NSDictionary *attributes = @{@"GET" : @{@"questionID" : [NSString stringWithFormat:@"%d", questionID]}};

	[self JSONObjectWithModule:@"question" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"question" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtQuestion:(NSInteger)questionID {

	NSDictionary *attributes = @{@"GET" : @{@"questionID" : [NSString stringWithFormat:@"%d", questionID]}};

	[self JSONObjectWithModule:@"question" method:@"get" attributes:attributes];
}

- (void)upvoteAuthenticatedAtQuestion:(NSInteger)questionID {

	NSDictionary *attributes = @{@"GET" : @{@"questionID" : [NSString stringWithFormat:@"%d", questionID]}};

	[self JSONObjectWithModule:@"question" method:@"upvote" attributes:attributes];
}

@end