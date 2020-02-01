#import "INQuizOptionAPIController.h"

@implementation INQuizOptionAPIController

#pragma mark - QuizOption

- (void)createAuthenticatedAtQuiz:(NSInteger)quizID withText:(NSString *)text withImage:(NSString *)image {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil && image != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%ld", (long)quizID]}, @"POST" : @{@"text" : text, @"image" : image}};

		[self objectWithModule:@"quiz.option" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuizOption:(NSInteger)quizOptionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizOptionID" : [NSString stringWithFormat:@"%ld", (long)quizOptionID]}};

		[self objectWithModule:@"quiz.option" method:@"remove" attributes:attributes];
	}
}

@end
