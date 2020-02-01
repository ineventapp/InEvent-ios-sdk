#import "INQuizAPIController.h"

@implementation INQuizAPIController

#pragma mark - Quiz

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"quiz" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtQuiz:(NSInteger)quizID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"quiz" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID]}};

		[self objectWithModule:@"quiz" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"quiz" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithAnswers:(NSString *)answers {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && answers != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"answers" : answers}};

		[self objectWithModule:@"quiz" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtQuiz:(NSInteger)quizID withAnswers:(NSString *)answers {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && answers != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID], @"answers" : answers}};

		[self objectWithModule:@"quiz" method:@"get" attributes:attributes];
	}
}

- (void)pushNotificationAuthenticatedAtQuiz:(NSInteger)quizID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID]}};

		[self objectWithModule:@"quiz" method:@"pushNotification" attributes:attributes];
	}
}

- (void)respondAuthenticatedAtQuizOption:(NSInteger)quizOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizOptionID" : [NSString stringWithFormat:@"%ld", (long)quizOptionID]}};

		[self objectWithModule:@"quiz" method:@"respond" attributes:attributes];
	}
}

@end
