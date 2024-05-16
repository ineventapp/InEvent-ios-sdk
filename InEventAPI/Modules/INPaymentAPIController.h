#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaymentAPIController : INAPIController

#pragma mark - Payment
- (void)createAuthenticatedAtEventWithUsername:(NSString *)username withTickets:(NSString *)tickets withName:(NSString *)name withEmail:(NSString *)email withInvoice:(NSString *)invoice withCompanyName:(NSString *)companyName withTaxDocument:(NSString *)taxDocument withAddressLine1:(NSString *)addressLine1 withAddressLine2:(NSString *)addressLine2 withPassword:(NSString *)password;
- (void)findAuthenticatedAtEventWithQuery:(NSString *)query;
- (void)approveAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)rejectAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)requestRefundAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)cancelRefundRequestAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)approveRefundAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)rejectRefundAuthenticatedAtEventAtPayment:(NSInteger)paymentID withMessage:(NSString *)message;
- (void)resendReceiptAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)statsAuthenticatedAtEvent;
- (void)downloadInvoicesAuthenticatedAtEvent;
@end
