#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaygovOfficeAPIController : INAPIController

#pragma mark - PaygovOffice
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withOriginatingOffice:(NSString *)originatingOffice withOrganizationCode:(NSString *)organizationCode;
- (void)operateAuthenticatedAtPayGovOffice:(NSInteger)payGovOfficeID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtPayGovOffice:(NSInteger)payGovOfficeID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
@end
