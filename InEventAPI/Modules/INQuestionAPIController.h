#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuestionAPIController : INAPIController

#pragma mark - Question
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text;
- (void)editAuthenticatedAtQuestion:(NSInteger)questionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)upvoteAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)downvoteAuthenticatedAtQuestion:(NSInteger)questionID;
@end
