#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPlaceholderAPIController : INAPIController

#pragma mark - Placeholder
- (void)createAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value;
- (void)removeAuthenticatedAtPlaceholder:(NSInteger)placeholderID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtPlaceholder:(NSInteger)placeholderID;
@end