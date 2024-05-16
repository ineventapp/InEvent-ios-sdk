#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCouponTicketAPIController : INAPIController

#pragma mark - CouponTicket
- (void)bindAuthenticatedAtEventAtTicket:(NSInteger)ticketID atCoupon:(NSInteger)couponID;
- (void)dismissAuthenticatedAtEventAtTicket:(NSInteger)ticketID atCoupon:(NSInteger)couponID;
- (void)findAuthenticatedAtEventAtCoupon:(NSInteger)couponID;
@end
