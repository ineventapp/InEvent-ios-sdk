#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCertificateOverrideAPIController : INAPIController

#pragma mark - CertificateOverride
- (void)bindAuthenticatedAtCertificate:(NSInteger)certificateID withTemplate:(NSString *)template withKey:(NSString *)key withContent:(NSString *)content withCss:(NSString *)css;
- (void)operateAuthenticatedAtCertificateOverride:(NSInteger)certificateOverrideID withKey:(NSString *)key withTemplate:(NSString *)template withValue:(NSString *)value;
- (void)dismissAuthenticatedAtCertificateOverride:(NSInteger)certificateOverrideID;
- (void)dismissAuthenticatedAtCertificate:(NSInteger)certificateID;
- (void)findAuthenticatedAtCertificate:(NSInteger)certificateID;
- (void)getAuthenticatedAtCertificateOverride:(NSInteger)certificateOverrideID;
@end
