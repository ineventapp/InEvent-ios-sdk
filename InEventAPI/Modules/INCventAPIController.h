#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCventAPIController : INAPIController

#pragma mark - Cvent
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withClientId:(NSString *)clientId withClientSecret:(NSString *)clientSecret withEnvironment:(NSString *)environment;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
@end
