#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLicenseReviewAPIController : INAPIController

#pragma mark - LicenseReview
- (void)bindAuthenticatedWithUsername:(NSString *)username atLicense:(NSInteger)licenseID withText:(NSString *)text withGrade:(NSString *)grade;
- (void)bindAuthenticatedAtEventAtLicense:(NSInteger)licenseID withText:(NSString *)text withGrade:(NSString *)grade;
- (void)operateAuthenticatedAtLicenseReview:(NSInteger)licenseReviewID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtLicenseReview:(NSInteger)licenseReviewID;
- (void)findAuthenticated;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtLicenseReview:(NSInteger)licenseReviewID;
@end
