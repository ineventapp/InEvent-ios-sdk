#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizAPIController : INAPIController

#pragma mark - Quiz
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withReady:(NSString *)ready withText:(NSString *)text withOptions:(NSString *)options;
- (void)editAuthenticatedAtQuiz:(NSInteger)quizID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withOrderDirection:(NSString *)orderDirection;
- (void)findAuthenticatedAtEventWithAnswers:(NSString *)answers withOrderDirection:(NSString *)orderDirection;
- (void)getAuthenticatedAtQuiz:(NSInteger)quizID withAnswers:(NSString *)answers;
- (void)pushNotificationAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)respondAuthenticatedAtQuizOption:(NSInteger)quizOptionID;
- (void)removeAnswersAuthenticatedAtQuiz:(NSInteger)quizID;
@end
