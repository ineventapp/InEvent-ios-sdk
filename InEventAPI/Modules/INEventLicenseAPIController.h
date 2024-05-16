#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventLicenseAPIController : INAPIController

#pragma mark - EventLicense
- (void)bindAuthenticatedAtEventAtLicense:(NSInteger)licenseID withMessage:(NSString *)message withEmail:(NSString *)email;
- (void)bindAuthenticatedAtEventAtLicense:(NSInteger)licenseID withBypass:(NSString *)bypass;
- (void)dismissAuthenticatedAtEventLicense:(NSInteger)eventLicenseID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)acceptIntroAuthenticatedAtEventLicense:(NSInteger)eventLicenseID;
- (void)approveAuthenticatedAtEventLicense:(NSInteger)eventLicenseID;
@end
