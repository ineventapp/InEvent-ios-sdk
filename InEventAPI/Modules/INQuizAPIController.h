#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizAPIController : INAPIController

#pragma mark - Quiz
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text;
- (void)editAuthenticatedAtQuiz:(NSInteger)quizID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventWithAnswers:(NSString *)answers;
- (void)getAuthenticatedAtQuiz:(NSInteger)quizID withAnswers:(NSString *)answers;
- (void)pushNotificationAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)respondAuthenticatedAtQuizOption:(NSInteger)quizOptionID;
@end
