#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INScreenAPIController : INAPIController

#pragma mark - Screen
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withJson:(NSString *)json;
- (void)createAuthenticatedAtEventWithPage:(NSString *)page withJson:(NSString *)json;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page;
- (void)findAuthenticatedAtEventWithPage:(NSString *)page;
@end
