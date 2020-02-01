#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonBadgeAPIController : INAPIController

#pragma mark - PersonBadge
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtEventWithTarget:(NSString *)target;
- (void)clearAuthenticatedAtEventWithTarget:(NSString *)target;
@end
