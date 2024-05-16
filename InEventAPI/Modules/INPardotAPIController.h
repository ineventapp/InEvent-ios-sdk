#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPardotAPIController : INAPIController

#pragma mark - Pardot
- (void)isEnabledAuthenticatedAtCompany:(NSInteger)companyID;
- (void)listFormsAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name;
@end
