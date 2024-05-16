#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INErrorAPIController : INAPIController

#pragma mark - Error
- (void)createAuthenticatedWithPlatform:(NSString *)platform withMessage:(NSString *)message withSTACK_TRACE:(NSString *)STACK_TRACE withINITIAL_CONFIGURATION:(NSString *)INITIAL_CONFIGURATION withBUILD:(NSString *)BUILD;
- (void)createAuthenticatedWithJson:(NSString *)json;
- (void)findAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withPlatform:(NSString *)platform withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withQuery:(NSString *)query;
@end
