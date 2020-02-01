#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventToolAPIController : INAPIController

#pragma mark - EventTool
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAtEvent;
@end
