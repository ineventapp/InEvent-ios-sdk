#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventToolAPIController : INAPIController

#pragma mark - EventTool
- (void)operateAuthenticatedAtEventWithFeature:(NSString *)feature withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAtEventWithFeature:(NSString *)feature;
@end