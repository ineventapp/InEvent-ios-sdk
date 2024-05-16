#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyAPIController : INAPIController

#pragma mark - Company
- (void)createAuthenticatedWithPlan:(NSString *)plan withCompanyName:(NSString *)companyName withAppIcon:(NSString *)appIcon withRegion:(NSString *)region;
- (void)createAuthenticatedWithPath:(NSString *)path;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editWithOnboardingToken:(NSString *)onboardingToken withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedWithNamespace:(NSString *)namespace;
- (void)getWithNamespace:(NSString *)namespace;
- (void)getAuthenticatedWithNickname:(NSString *)nickname;
- (void)getWithNickname:(NSString *)nickname;
- (void)getWithOnboardingToken:(NSString *)onboardingToken;
- (void)getColorsAuthenticatedAtCompany:(NSInteger)companyID;
@end
