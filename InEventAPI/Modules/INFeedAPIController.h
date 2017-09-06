#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedAPIController : INAPIController

#pragma mark - Feed
- (void)createAuthenticatedAtEventWithText:(NSString *)text withPicture:(NSString *)picture withVideo:(NSString *)video withExternalUrl:(NSString *)externalUrl;
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withTitle:(NSString *)title withText:(NSString *)text withPicture:(NSString *)picture withVideo:(NSString *)video withActionTitle:(NSString *)actionTitle withActionUrl:(NSString *)actionUrl withExternalUrl:(NSString *)externalUrl;
- (void)editAuthenticatedAtFeed:(NSInteger)feedID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFeed:(NSInteger)feedID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)findAtEventWithQuery:(NSString *)query;
- (void)findAtCompany:(NSInteger)companyID withQuery:(NSString *)query;
- (void)getAuthenticatedAtFeed:(NSInteger)feedID;
- (void)shareAuthenticatedAtFeed:(NSInteger)feedID;
- (void)likeAuthenticatedAtFeed:(NSInteger)feedID;
- (void)unlikeAuthenticatedAtFeed:(NSInteger)feedID;
- (void)reportAuthenticatedAtFeed:(NSInteger)feedID;
- (void)previewAuthenticatedAtEventWithUrl:(NSString *)url;
@end