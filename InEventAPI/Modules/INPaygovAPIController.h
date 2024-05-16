#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaygovAPIController : INAPIController

#pragma mark - Paygov
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)verifyCredentialsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)doRequestWithJwt:(NSString *)jwt;
@end
