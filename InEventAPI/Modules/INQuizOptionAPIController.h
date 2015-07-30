#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizOptionAPIController : INAPIController

#pragma mark - QuizOption
- (void)createAuthenticatedAtQuiz:(NSInteger)quizID withText:(NSString *)text;
- (void)removeAuthenticatedAtQuizOption:(NSInteger)quizOptionID;
@end