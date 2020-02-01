#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyNotificationAPIController : INAPIController

#pragma mark - CompanyNotification
- (void)operateAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
@end
