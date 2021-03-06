#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INVersionAPIController : INAPIController

#pragma mark - Version
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withPlatform:(NSString *)platform withVersion:(NSString *)version withBuild:(NSString *)build;
- (void)getAtCompany:(NSInteger)companyID withPlatform:(NSString *)platform;
@end
