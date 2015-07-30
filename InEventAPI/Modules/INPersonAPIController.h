#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonAPIController : INAPIController

#pragma mark - Person
- (void)createWithName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password;
- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticated;
- (void)getAuthenticatedForPerson:(NSInteger)personID;
- (void)signInWithEmail:(NSString *)email withPassword:(NSString *)password;
- (void)verifyEmailWithEmail:(NSString *)email;
- (void)sendRecoveryWithEmail:(NSString *)email;
- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword;
- (void)subscribeAuthenticatedWithEmail:(NSString *)email;
- (void)unsubscribeAuthenticatedWithEmail:(NSString *)email;
- (void)sendFeedbackAuthenticatedWithMessage:(NSString *)message;
@end