#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyLegalAPIController : INAPIController

#pragma mark - CompanyLegal
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
@end
