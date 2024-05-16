#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLandingAPIController : INAPIController

#pragma mark - Landing
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withCname:(NSString *)cname withRoot:(NSString *)root;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withCname:(NSString *)cname withRoot:(NSString *)root;
- (void)editAuthenticatedAtLanding:(NSInteger)landingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtLanding:(NSInteger)landingID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtLanding:(NSInteger)landingID;
- (void)putAuthenticatedAtLanding:(NSInteger)landingID withFile:(NSString *)file withType:(NSString *)type withUrl:(NSString *)url;
- (void)deleteAuthenticatedAtLanding:(NSInteger)landingID withFile:(NSString *)file;
- (void)copyAuthenticatedAtLanding:(NSInteger)landingID atSourceLanding:(NSInteger)sourceLandingID;
@end
