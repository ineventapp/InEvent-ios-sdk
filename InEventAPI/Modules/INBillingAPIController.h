#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBillingAPIController : INAPIController

#pragma mark - Billing
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)transferAuthenticatedAtCompany:(NSInteger)companyID atDestCompany:(NSInteger)destCompanyID withDestProduct:(NSString *)destProduct withDestAmount:(NSString *)destAmount;
@end
