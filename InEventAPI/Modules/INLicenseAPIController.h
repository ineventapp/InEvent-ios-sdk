#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLicenseAPIController : INAPIController

#pragma mark - License
- (void)createAuthenticatedWithUsername:(NSString *)username withCourse:(NSString *)course withLocation:(NSString *)location;
- (void)editAuthenticatedWithNumber:(NSString *)number withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtLicense:(NSInteger)licenseID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedWithNumber:(NSString *)number;
- (void)findAuthenticatedWithAvailable:(NSString *)available withQuery:(NSString *)query withOrder:(NSString *)order;
- (void)getAuthenticatedWithNumber:(NSString *)number;
- (void)addCourseAuthenticatedAtLicense:(NSInteger)licenseID withCourse:(NSString *)course;
- (void)removeCourseAuthenticatedAtLicense:(NSInteger)licenseID withCourse:(NSString *)course;
- (void)addRegionAuthenticatedAtLicense:(NSInteger)licenseID withRegion:(NSString *)region;
- (void)removeRegionAuthenticatedAtLicense:(NSInteger)licenseID withRegion:(NSString *)region;
- (void)requestAuthenticatedWithNumber:(NSString *)number withLeadEmail:(NSString *)leadEmail;
@end
