#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INStripeAPIController : INAPIController

#pragma mark - Stripe
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)linkAccountAuthenticatedAtCompany:(NSInteger)companyID withApiKey:(NSString *)apiKey;
- (void)unlinkAccountAuthenticatedAtCompany:(NSInteger)companyID;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
@end
