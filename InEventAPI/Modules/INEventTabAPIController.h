#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventTabAPIController : INAPIController

#pragma mark - EventTab
- (void)createAuthenticatedAtEventWithType:(NSString *)type withTitle:(NSString *)title withLink:(NSString *)link;
- (void)editAuthenticatedAtEventWithTab:(NSString *)tab withLanguage:(NSString *)language withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtEventTab:(NSInteger)eventTabID;
- (void)findAtEvent;
- (void)getAtEventTab:(NSInteger)eventTabID;
- (void)bindListAtEventTab:(NSInteger)eventTabID atList:(NSInteger)listID;
- (void)dismissListAtEventTab:(NSInteger)eventTabID atList:(NSInteger)listID;
@end
