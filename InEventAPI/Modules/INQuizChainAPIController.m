#import "INQuizChainAPIController.h"

@implementation INQuizChainAPIController

#pragma mark - QuizChain

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withReady:(NSString *)ready withText:(NSString *)text withOptions:(NSString *)options {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && ready != nil && text != nil && options != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"ready" : ready}, @"POST" : @{@"text" : text, @"options" : options}};

		[self objectWithModule:@"quiz.chain" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtQuiz:(NSInteger)quizID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"quiz.chain" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID]}};

		[self objectWithModule:@"quiz.chain" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"orderDirection" : orderDirection}};

		[self objectWithModule:@"quiz.chain" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithAnswers:(NSString *)answers withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && answers != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"answers" : answers, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"quiz.chain" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtQuizChain:(NSInteger)quizChainID withAnswers:(NSString *)answers {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && answers != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizChainID" : [NSString stringWithFormat:@"%ld", (long)quizChainID], @"answers" : answers}};

		[self objectWithModule:@"quiz.chain" method:@"get" attributes:attributes];
	}
}

- (void)leaderboardAuthenticatedAtQuizChain:(NSInteger)quizChainID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizChainID" : [NSString stringWithFormat:@"%ld", (long)quizChainID]}};

		[self objectWithModule:@"quiz.chain" method:@"leaderboard" attributes:attributes];
	}
}

- (void)reportAuthenticatedAtQuizChain:(NSInteger)quizChainID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizChainID" : [NSString stringWithFormat:@"%ld", (long)quizChainID]}};

		[self objectWithModule:@"quiz.chain" method:@"report" attributes:attributes];
	}
}

- (void)respondAuthenticatedAtQuizOption:(NSInteger)quizOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizOptionID" : [NSString stringWithFormat:@"%ld", (long)quizOptionID]}};

		[self objectWithModule:@"quiz.chain" method:@"respond" attributes:attributes];
	}
}

@end
