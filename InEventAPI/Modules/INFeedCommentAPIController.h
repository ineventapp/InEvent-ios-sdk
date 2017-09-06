#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedCommentAPIController : INAPIController

#pragma mark - FeedComment
- (void)createAuthenticatedAtFeed:(NSInteger)feedID withText:(NSString *)text;
- (void)editAuthenticatedAtFeedComment:(NSInteger)feedCommentID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFeedComment:(NSInteger)feedCommentID;
- (void)findAuthenticatedAtFeed:(NSInteger)feedID;
- (void)reportAuthenticatedAtFeedComment:(NSInteger)feedCommentID;
@end