#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCommentAPIController : INAPIController

#pragma mark - Comment
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withText:(NSString *)text;
- (void)removeAuthenticatedAtComment:(NSInteger)commentID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAuthenticatedAtComment:(NSInteger)commentID;

@end