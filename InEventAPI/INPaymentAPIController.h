#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaymentAPIController : INAPIController

#pragma mark - Payment
- (void)createAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email;
- (void)findAuthenticatedAtEvent;
- (void)requestAddressAuthenticatedAtEventAtPayment:(NSInteger)paymentID;
- (void)provideConfirmationAtEventWithCollection_id:(NSString *)collection_id;

@end