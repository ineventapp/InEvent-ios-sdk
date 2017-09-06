#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventPrinterAPIController : INAPIController

#pragma mark - EventPrinter
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtEvent;
@end