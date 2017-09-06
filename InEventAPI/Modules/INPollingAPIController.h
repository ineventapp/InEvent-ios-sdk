#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPollingAPIController : INAPIController

#pragma mark - Polling
- (void)createAuthenticatedAtEventWithType:(NSString *)type withEndpoint:(NSString *)endpoint;
- (void)editAuthenticatedAtPolling:(NSInteger)pollingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtPolling:(NSInteger)pollingID;
- (void)findAuthenticatedAtEvent;
@end