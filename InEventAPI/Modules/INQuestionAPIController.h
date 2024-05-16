#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuestionAPIController : INAPIController

#pragma mark - Question
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text;
- (void)createAuthenticatedAtActivity:(NSInteger)activityID atLive:(NSInteger)liveID withText:(NSString *)text;
- (void)editAuthenticatedAtQuestion:(NSInteger)questionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtQuestion:(NSInteger)questionID atLive:(NSInteger)liveID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID atLive:(NSInteger)liveID;
- (void)removeAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)upvoteAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)downvoteAuthenticatedAtQuestion:(NSInteger)questionID;
- (void)replyAuthenticatedAtQuestion:(NSInteger)questionID withAnswer:(NSString *)answer;
@end
