#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCouponAPIController : INAPIController

#pragma mark - Coupon
- (void)createAuthenticatedWithCode:(NSString *)code withFeature:(NSString *)feature withDiscount:(NSString *)discount;
- (void)getWithCode:(NSString *)code;
@end