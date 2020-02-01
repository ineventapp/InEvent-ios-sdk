#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INWebhookAPIController : INAPIController

#pragma mark - Webhook
- (void)createAuthenticatedAtEventWithType:(NSString *)type withUrl:(NSString *)url;
- (void)removeAuthenticatedAtWebhook:(NSInteger)webhookID;
- (void)findAuthenticatedAtEvent;
- (void)requestExampleAuthenticatedAtWebhook:(NSInteger)webhookID;
- (void)responseExampleAuthenticatedAtWebhook:(NSInteger)webhookID;
@end
