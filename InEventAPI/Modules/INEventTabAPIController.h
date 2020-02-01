#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventTabAPIController : INAPIController

#pragma mark - EventTab
- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withLink:(NSString *)link;
- (void)editAuthenticatedAtEventWithTab:(NSString *)tab withLanguage:(NSString *)language withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventTab:(NSInteger)eventTabID;
- (void)getAtEvent;
@end
