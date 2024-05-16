#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSsoAPIController : INAPIController

#pragma mark - Sso
- (void)editAuthenticatedAtSso:(NSInteger)ssoID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)linkAccountAuthenticatedAtCompany:(NSInteger)companyID withIssuerURL:(NSString *)issuerURL withSingleSignOnService:(NSString *)singleSignOnService withSingleLogoutService:(NSString *)singleLogoutService withPrivateKeyCertificate:(NSString *)privateKeyCertificate;
- (void)unlinkAccountAuthenticatedAtCompany:(NSInteger)companyID;
@end
