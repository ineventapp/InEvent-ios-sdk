#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventPurchaseAPIController : INAPIController

#pragma mark - EventPurchase
- (void)getAtEvent;
- (void)setConfigAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
@end
