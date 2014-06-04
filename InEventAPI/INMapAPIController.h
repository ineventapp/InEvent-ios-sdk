#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMapAPIController : INAPIController

#pragma mark - Map
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtEvent;

@end