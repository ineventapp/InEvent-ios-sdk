#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaymentAPIController : INAPIController

#pragma mark - Payment
- (void)createAuthenticatedAtEventWithUsername:(NSString *)username withTickets:(NSString *)tickets withName:(NSString *)name withEmail:(NSString *)email withAmount:(NSString *)amount withPassword:(NSString *)password;
- (void)findAuthenticatedAtEventWithQuery:(NSString *)query;
@end
