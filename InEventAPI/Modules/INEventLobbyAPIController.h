#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventLobbyAPIController : INAPIController

#pragma mark - EventLobby
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtEvent;
@end
