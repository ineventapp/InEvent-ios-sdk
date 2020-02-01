#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyLinkAPIController : INAPIController

#pragma mark - CompanyLink
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withTitle:(NSString *)title withLink:(NSString *)link;
- (void)removeAuthenticatedAtCompanyLink:(NSInteger)companyLinkID;
- (void)findAtCompany:(NSInteger)companyID;
@end
