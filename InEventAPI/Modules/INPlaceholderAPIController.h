#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPlaceholderAPIController : INAPIController

#pragma mark - Placeholder
- (void)createAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value withMask:(NSString *)mask;
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withType:(NSString *)type withValue:(NSString *)value;
- (void)removeAuthenticatedAtPlaceholder:(NSInteger)placeholderID;
- (void)findAtCompany:(NSInteger)companyID;
- (void)findAtEvent;
- (void)getAuthenticatedAtPlaceholder:(NSInteger)placeholderID;
- (void)getAuthenticatedAtEventWithType:(NSString *)type;
@end
