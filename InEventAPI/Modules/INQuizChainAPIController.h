#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizChainAPIController : INAPIController

#pragma mark - QuizChain
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withReady:(NSString *)ready withText:(NSString *)text withOptions:(NSString *)options;
- (void)editAuthenticatedAtQuiz:(NSInteger)quizID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtQuiz:(NSInteger)quizID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withOrderDirection:(NSString *)orderDirection;
- (void)findAuthenticatedAtEventWithAnswers:(NSString *)answers withOrderDirection:(NSString *)orderDirection;
- (void)getAuthenticatedAtQuizChain:(NSInteger)quizChainID withAnswers:(NSString *)answers;
- (void)leaderboardAuthenticatedAtQuizChain:(NSInteger)quizChainID;
- (void)reportAuthenticatedAtQuizChain:(NSInteger)quizChainID;
- (void)respondAuthenticatedAtQuizOption:(NSInteger)quizOptionID;
@end
