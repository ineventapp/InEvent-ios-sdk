#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLinkedinAPIController : INAPIController

#pragma mark - Linkedin
- (void)signInWithLinkedInToken:(NSString *)linkedInToken;
@end
