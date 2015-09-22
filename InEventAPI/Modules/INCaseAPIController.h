#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCaseAPIController : INAPIController

#pragma mark - Case
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)find;
- (void)getAtEvent;
@end