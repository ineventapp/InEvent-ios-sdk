#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizOptionAPIController : INAPIController

#pragma mark - QuizOption
- (void)createAuthenticatedAtQuiz:(NSInteger)quizID withText:(NSString *)text withImage:(NSString *)image;
- (void)editAuthenticatedAtQuiz:(NSInteger)quizID atQuizOption:(NSInteger)quizOptionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtQuizOption:(NSInteger)quizOptionID;
@end
