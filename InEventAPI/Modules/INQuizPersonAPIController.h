#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizPersonAPIController : INAPIController

#pragma mark - QuizPerson
- (void)findAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtQuiz:(NSInteger)quizID;
@end
