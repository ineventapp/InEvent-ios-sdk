#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyAPIController : INAPIController

#pragma mark - Company
- (void)createAuthenticatedWithShortName:(NSString *)shortName withStoreTitle:(NSString *)storeTitle;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticated;
- (void)getAtCompany:(NSInteger)companyID;
@end