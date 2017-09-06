#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonAPIController : INAPIController

#pragma mark - Person
- (void)createWithName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withLanguage:(NSString *)language;
- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)editAuthenticatedWithContent:(NSString *)content;
- (void)getAuthenticated;
- (void)getAuthenticatedForPerson:(NSInteger)personID;
- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withPassword:(NSString *)password;
- (void)externalSignInWithUsername:(NSString *)username withCompany:(NSString *)company withPassword:(NSString *)password;
- (void)sendRecoveryWithUsername:(NSString *)username atCompany:(NSInteger)companyID;
- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword;
- (void)changePasswordAuthenticatedWithNewPassword:(NSString *)newPassword;
- (void)changeLevelAuthenticatedForPerson:(NSInteger)personID withNewLevel:(NSString *)newLevel;
- (void)terminateAuthenticatedWithPassword:(NSString *)password;
- (void)subscribeAuthenticatedWithEmail:(NSString *)email;
- (void)unsubscribeAuthenticatedWithEmail:(NSString *)email;
- (void)sendFeedbackAuthenticatedAtCompany:(NSInteger)companyID withMessage:(NSString *)message;
@end