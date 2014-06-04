#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLinkedInAPIController : INAPIController

#pragma mark - LinkedIn
- (void)signInWithLinkedInToken:(NSString *)linkedInToken;
- (void)updateAuthenticatedWithLinkedInToken:(NSString *)linkedInToken withSelection:(NSString *)selection;
- (void)generateAuthenticatedAtEvent;

@end