#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaypalAPIController : INAPIController

#pragma mark - Paypal
- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)editAuthenticatedAtEventAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)clearAuthenticatedAtEventAtCompany:(NSInteger)companyID;
@end
