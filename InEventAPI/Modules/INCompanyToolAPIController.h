#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyToolAPIController : INAPIController

#pragma mark - CompanyTool
- (void)getAtCompany:(NSInteger)companyID;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
@end