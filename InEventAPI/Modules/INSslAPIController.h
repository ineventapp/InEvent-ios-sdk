#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSslAPIController : INAPIController

#pragma mark - Ssl
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withDomain:(NSString *)domain;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withDomain:(NSString *)domain;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID atSsl:(NSInteger)sslID;
- (void)challengeAuthenticatedAtCompany:(NSInteger)companyID atSsl:(NSInteger)sslID;
- (void)verifyAuthenticatedAtCompany:(NSInteger)companyID atSsl:(NSInteger)sslID;
@end
