#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INThemeAPIController : INAPIController

#pragma mark - Theme
- (void)find;
- (void)findWithName:(NSString *)name;
- (void)getAtTheme:(NSInteger)themeID;
@end
