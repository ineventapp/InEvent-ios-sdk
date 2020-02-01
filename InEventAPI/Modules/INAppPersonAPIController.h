#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAppPersonAPIController : INAPIController

#pragma mark - AppPerson
- (void)bindAuthenticatedAtApp:(NSInteger)appID;
- (void)dismissAuthenticatedAtApp:(NSInteger)appID;
- (void)findAuthenticated;
@end
