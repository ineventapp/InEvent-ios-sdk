#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonBadgeAPIController : INAPIController

#pragma mark - PersonBadge
- (void)getAuthenticatedAtEventWithTarget:(NSString *)target;
- (void)findAuthenticatedAtEvent;
- (void)clearAuthenticatedAtEventWithTarget:(NSString *)target;
@end