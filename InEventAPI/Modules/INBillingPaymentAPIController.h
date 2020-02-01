#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBillingPaymentAPIController : INAPIController

#pragma mark - BillingPayment
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withContent:(NSString *)content;
@end
