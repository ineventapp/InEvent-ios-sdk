#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAuthorizeNetAPIController : INAPIController

#pragma mark - AuthorizeNet
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withApiId:(NSString *)apiId withTransactionKey:(NSString *)transactionKey withSandbox:(NSString *)sandbox;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)currenciesAuthenticatedAtCompany:(NSInteger)companyID;
@end
