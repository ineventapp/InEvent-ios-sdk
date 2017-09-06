#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INWebhookAPIController : INAPIController

#pragma mark - Webhook
- (void)createAuthenticatedAtEventWithType:(NSString *)type withUrl:(NSString *)url;
- (void)findAuthenticatedAtEvent;
- (void)removeAuthenticatedAtWebhook:(NSInteger)webhookID;
- (void)requestExampleAuthenticatedAtWebhook:(NSInteger)webhookID;
- (void)responseExampleAuthenticatedAtWebhook:(NSInteger)webhookID;
@end