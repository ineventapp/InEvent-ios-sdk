#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHubspotEventAPIController : INAPIController

#pragma mark - HubspotEvent
- (void)getAuthenticatedAtEvent;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)syncAuthenticatedAtEvent;
@end
