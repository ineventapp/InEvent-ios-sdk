#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCouponAPIController : INAPIController

#pragma mark - Coupon
- (void)createAuthenticatedAtEventWithDiscount:(NSString *)discount withCode:(NSString *)code;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventWithCode:(NSString *)code;
@end
