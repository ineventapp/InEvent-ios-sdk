#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyTabAPIController : INAPIController

#pragma mark - CompanyTab
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withTab:(NSString *)tab withLanguage:(NSString *)language withValue:(NSString *)value;
- (void)getAtCompany:(NSInteger)companyID;
@end