#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyAPIController : INAPIController

#pragma mark - Company
- (void)createAuthenticatedWithShortName:(NSString *)shortName withStoreTitle:(NSString *)storeTitle;
- (void)createAuthenticatedWithPath:(NSString *)path;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editWithOnboardingToken:(NSString *)onboardingToken withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAtCompany:(NSInteger)companyID;
- (void)getWithNamespace:(NSString *)namespace;
- (void)getWithOnboardingToken:(NSString *)onboardingToken;
@end