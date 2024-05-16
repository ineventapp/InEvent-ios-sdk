#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INRegistrationBlacklistAPIController : INAPIController

#pragma mark - RegistrationBlacklist
- (void)createAuthenticatedAtEventWithDomain:(NSString *)domain;
- (void)removeAuthenticatedAtEventAtRegistrationBlacklist:(NSInteger)registrationBlacklistID;
- (void)findAuthenticatedAtEvent;
@end
