#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFacebookAPIController : INAPIController

#pragma mark - Facebook
- (void)signInWithFacebookToken:(NSString *)facebookToken;
- (void)updateAuthenticatedWithFacebookToken:(NSString *)facebookToken withSelection:(NSString *)selection;
@end