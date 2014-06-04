#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizAPIController : INAPIController

#pragma mark - Quiz
- (void)createAuthenticatedAtEventWithText:(NSString *)text;
- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)respondAuthenticatedAtQuiz:(NSInteger)quizID atQuizOption:(NSInteger)quizOptionID;

@end