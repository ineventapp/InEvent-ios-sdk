#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCommentAPIController : INAPIController

#pragma mark - Comment
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text;
- (void)editAuthenticatedAtComment:(NSInteger)commentID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtComment:(NSInteger)commentID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection;
- (void)getAuthenticatedAtComment:(NSInteger)commentID;
- (void)hashtagsAuthenticatedAtActivity:(NSInteger)activityID;
@end