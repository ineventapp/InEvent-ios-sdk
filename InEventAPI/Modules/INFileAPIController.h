#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFileAPIController : INAPIController

#pragma mark - File
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withWidth:(NSString *)width withHeight:(NSString *)height withFile:(NSString *)file;
- (void)createWithOnboardingToken:(NSString *)onboardingToken withName:(NSString *)name withWidth:(NSString *)width withHeight:(NSString *)height withFile:(NSString *)file;
@end