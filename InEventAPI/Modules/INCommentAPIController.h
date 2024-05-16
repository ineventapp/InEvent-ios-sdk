#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCommentAPIController : INAPIController

#pragma mark - Comment
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withCompact:(NSString *)compact withSkipSocket:(NSString *)skipSocket withText:(NSString *)text;
- (void)createAuthenticatedAtSponsor:(NSInteger)sponsorID withCompact:(NSString *)compact withSkipSocket:(NSString *)skipSocket withText:(NSString *)text;
- (void)editAuthenticatedAtComment:(NSInteger)commentID withKey:(NSString *)key withSkipSocket:(NSString *)skipSocket withValue:(NSString *)value;
- (void)removeAuthenticatedAtComment:(NSInteger)commentID withSkipSocket:(NSString *)skipSocket;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrderDirection:(NSString *)orderDirection withCompact:(NSString *)compact atFirstComment:(NSInteger)firstCommentID;
- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID withSelection:(NSString *)selection withOrderDirection:(NSString *)orderDirection withCompact:(NSString *)compact atFirstComment:(NSInteger)firstCommentID;
- (void)getAuthenticatedAtComment:(NSInteger)commentID;
- (void)hashtagsAuthenticatedAtActivity:(NSInteger)activityID;
- (void)hashtagsAuthenticatedAtSponsor:(NSInteger)sponsorID;
@end
