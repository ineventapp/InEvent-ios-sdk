#import "INQuizAPIController.h"

@implementation INQuizAPIController

#pragma mark - Quiz

- (void)createAuthenticatedAtEventWithText:(NSString *)text {

	if (text != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"quiz" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID {

	NSDictionary *attributes = @{@"GET" : @{@"quizID" : [NSString stringWithFormat:@"%d", quizID]}};

	[self JSONObjectWithModule:@"quiz" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"quiz" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtQuiz:(NSInteger)quizID {

	NSDictionary *attributes = @{@"GET" : @{@"quizID" : [NSString stringWithFormat:@"%d", quizID]}};

	[self JSONObjectWithModule:@"quiz" method:@"get" attributes:attributes];
}

- (void)respondAuthenticatedAtQuiz:(NSInteger)quizID atQuizOption:(NSInteger)quizOptionID {

	NSDictionary *attributes = @{@"GET" : @{@"quizID" : [NSString stringWithFormat:@"%d", quizID], @"quizOptionID" : [NSString stringWithFormat:@"%d", quizOptionID]}};

	[self JSONObjectWithModule:@"quiz" method:@"respond" attributes:attributes];
}

@end