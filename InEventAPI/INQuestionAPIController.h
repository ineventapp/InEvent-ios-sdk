#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuestionAPIController : INAPIController

#pragma mark - Question
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text;
- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)upvoteAuthenticatedAtQuestion:(NSInteger)questionID;

@end