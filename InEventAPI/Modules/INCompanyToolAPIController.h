#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyToolAPIController : INAPIController

#pragma mark - CompanyTool
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAtCompany:(NSInteger)companyID;
- (void)availableAuthenticated;
@end
