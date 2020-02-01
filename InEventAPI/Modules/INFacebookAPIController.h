#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFacebookAPIController : INAPIController

#pragma mark - Facebook
- (void)signInWithFacebookToken:(NSString *)facebookToken;
@end
