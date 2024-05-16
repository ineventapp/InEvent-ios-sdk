#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPushAPIController : INAPIController

#pragma mark - CompanyPush
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
@end
