#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INRegistrationWhitelistAPIController : INAPIController

#pragma mark - RegistrationWhitelist
- (void)createAuthenticatedAtEventWithDomain:(NSString *)domain;
- (void)editAuthenticatedAtRegistrationWhitelist:(NSInteger)registrationWhitelistID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtRegistrationWhitelist:(NSInteger)registrationWhitelistID;
- (void)findAuthenticatedAtEvent;
- (void)checkAtEventWithType:(NSString *)type withEmail:(NSString *)email;
- (void)checkAtEventWithType:(NSString *)type withDomain:(NSString *)domain;
@end
