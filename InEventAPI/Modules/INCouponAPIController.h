#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCouponAPIController : INAPIController

#pragma mark - Coupon
- (void)createAuthenticatedAtEventWithDiscount:(NSString *)discount;
- (void)getAuthenticatedAtEventWithCode:(NSString *)code;
@end
