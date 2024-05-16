#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INInvoiceAPIController : INAPIController

#pragma mark - Invoice
- (void)createAuthenticatedAtEventWithUsername:(NSString *)username withName:(NSString *)name withEmail:(NSString *)email withCompanyName:(NSString *)companyName withTaxDocument:(NSString *)taxDocument withAddressLine1:(NSString *)addressLine1 withAddressLine2:(NSString *)addressLine2 withTickets:(NSString *)tickets withInvoice:(NSString *)invoice;
- (void)findAuthenticatedAtEvent;
- (void)removeAuthenticatedAtInvoice:(NSInteger)invoiceID;
- (void)getAuthenticatedAtInvoice:(NSInteger)invoiceID;
- (void)getAtEncryptedInvoice:(NSInteger)encryptedInvoiceID;
- (void)sendPreviewAuthenticatedAtEventForPerson:(NSInteger)personID withCompanyName:(NSString *)companyName withCompanyTaxId:(NSString *)companyTaxId withAddressLine1:(NSString *)addressLine1 withAddressLine2:(NSString *)addressLine2 withTickets:(NSString *)tickets;
- (void)resendInvoiceAuthenticatedAtEventAtInvoice:(NSInteger)invoiceID;
@end
