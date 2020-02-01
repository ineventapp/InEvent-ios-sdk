#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBillingAPIController : INAPIController

#pragma mark - Billing
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
@end
