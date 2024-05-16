#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INWebhookAPIController : INAPIController

#pragma mark - Webhook
- (void)createAuthenticatedAtEventAtCompany:(NSInteger)companyID withType:(NSString *)type withUrl:(NSString *)url;
- (void)editAuthenticatedAtWebhook:(NSInteger)webhookID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtWebhook:(NSInteger)webhookID;
- (void)findAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)requestExampleAuthenticatedAtWebhook:(NSInteger)webhookID;
- (void)responseExampleAuthenticatedAtWebhook:(NSInteger)webhookID;
@end
