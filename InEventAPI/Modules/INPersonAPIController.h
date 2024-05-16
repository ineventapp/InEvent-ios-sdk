#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonAPIController : INAPIController

#pragma mark - Person
- (void)createWithUsername:(NSString *)username withPassword:(NSString *)password withLanguage:(NSString *)language;
- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)editAuthenticatedWithContent:(NSString *)content;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedForPerson:(NSInteger)personID atCompany:(NSInteger)companyID;
- (void)signInWithUsername:(NSString *)username withSecretCode:(NSString *)secretCode;
- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withPassword:(NSString *)password;
- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withVerifyBy:(NSString *)verifyBy withPassword:(NSString *)password;
- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withVerifyBy:(NSString *)verifyBy withCode:(NSString *)code withPassword:(NSString *)password;
- (void)externalSignInWithUsername:(NSString *)username withCompany:(NSString *)company withPassword:(NSString *)password;
- (void)enableTwoFactorAuthenticatedWithVerifyBy:(NSString *)verifyBy;
- (void)enableTwoFactorAuthenticatedWithVerifyBy:(NSString *)verifyBy withCode:(NSString *)code;
- (void)disableTwoFactorAuthenticated;
- (void)requestTrialAuthenticated;
- (void)sendRecoveryAuthenticatedAtCompany:(NSInteger)companyID;
- (void)sendRecoveryAuthenticatedAtEvent;
- (void)sendRecoveryWithUsername:(NSString *)username atCompany:(NSInteger)companyID;
- (void)sendRecoveryAtEventWithUsername:(NSString *)username;
- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword;
- (void)changePasswordAuthenticatedWithNewPassword:(NSString *)newPassword;
- (void)changeLevelAuthenticatedForPerson:(NSInteger)personID withNewLevel:(NSString *)newLevel;
- (void)changeLevelAuthenticatedWithUsername:(NSString *)username withNewLevel:(NSString *)newLevel;
- (void)exportDataAuthenticatedAtCompany:(NSInteger)companyID;
- (void)terminateAccountAuthenticatedWithPassword:(NSString *)password;
- (void)sendFeedbackAuthenticatedAtCompany:(NSInteger)companyID withMessage:(NSString *)message;
- (void)sendBugAuthenticatedAtEventAtCompany:(NSInteger)companyID withPlatform:(NSString *)platform withPagelink:(NSString *)pagelink withBug:(NSString *)bug withSteps:(NSString *)steps withExtra:(NSString *)extra;
- (void)getBugAuthenticatedWithConversationId:(NSString *)conversationId;
- (void)sendTroubleshootAuthenticatedAtEventWithMessage:(NSString *)message;
- (void)setPreferenceAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value;
@end
