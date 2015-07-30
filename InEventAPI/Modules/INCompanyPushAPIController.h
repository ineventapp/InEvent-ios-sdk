#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPushAPIController : INAPIController

#pragma mark - CompanyPush
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withAndroidKey:(NSString *)androidKey withIosPath:(NSString *)iosPath;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
@end