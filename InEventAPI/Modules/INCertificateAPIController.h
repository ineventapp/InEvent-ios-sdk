#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCertificateAPIController : INAPIController

#pragma mark - Certificate
- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withTemplate:(NSString *)template withAchievementKey:(NSString *)achievementKey withLogo:(NSString *)logo withBackground:(NSString *)background;
- (void)copyAuthenticatedAtEventAtCertificate:(NSInteger)certificateID withTitle:(NSString *)title;
- (void)editAuthenticatedAtCertificate:(NSInteger)certificateID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtCertificate:(NSInteger)certificateID withKey:(NSString *)key withOverride:(NSString *)override withValue:(NSString *)value;
- (void)removeAuthenticatedAtCertificate:(NSInteger)certificateID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtCertificate:(NSInteger)certificateID;
- (void)getAuthenticatedAtCertificate:(NSInteger)certificateID withOverride:(NSString *)override;
@end
