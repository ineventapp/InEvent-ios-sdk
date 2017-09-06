#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyFeatureAPIController : INAPIController

#pragma mark - CompanyFeature
- (void)getAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)availableAuthenticated;
@end