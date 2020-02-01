#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTwitterAPIController : INAPIController

#pragma mark - Twitter
- (void)signInWithAccessToken:(NSString *)accessToken withAccessTokenSecret:(NSString *)accessTokenSecret;
@end
