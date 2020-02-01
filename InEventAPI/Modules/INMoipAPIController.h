#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMoipAPIController : INAPIController

#pragma mark - Moip
- (void)getAuthenticatedAtEvent;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)linkAccountAuthenticatedAtEventWithApiKey:(NSString *)apiKey withApiToken:(NSString *)apiToken withSandbox:(NSString *)sandbox;
- (void)unlinkAccountAuthenticatedAtEvent;
@end
