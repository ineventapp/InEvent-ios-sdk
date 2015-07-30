#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventThemeAPIController : INAPIController

#pragma mark - EventTheme
- (void)operateAuthenticatedAtEventWithOperation:(NSString *)operation withKey:(NSString *)key withValue:(NSString *)value;
@end