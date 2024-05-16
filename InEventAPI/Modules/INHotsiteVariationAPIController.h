#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotsiteVariationAPIController : INAPIController

#pragma mark - HotsiteVariation
- (void)bindAuthenticatedAtEventWithPage:(NSString *)page withVariation:(NSString *)variation withValue:(NSString *)value;
- (void)dismissAuthenticatedAtEventWithPage:(NSString *)page withVariation:(NSString *)variation;
- (void)findAuthenticatedAtEventWithPage:(NSString *)page;
@end
