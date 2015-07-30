#import "INQuizOptionAPIController.h"

@implementation INQuizOptionAPIController

#pragma mark - QuizOption

- (void)createAuthenticatedAtQuiz:(NSInteger)quizID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID]}, @"POST" : @{@"text" : text}};

		[self JSONObjectWithModule:@"quiz.option" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuizOption:(NSInteger)quizOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizOptionID" : [NSString stringWithFormat:@"%ld", (long)quizOptionID]}};

		[self JSONObjectWithModule:@"quiz.option" method:@"remove" attributes:attributes];
	}
}

@end