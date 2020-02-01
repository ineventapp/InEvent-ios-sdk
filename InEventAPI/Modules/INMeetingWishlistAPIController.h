#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingWishlistAPIController : INAPIController

#pragma mark - MeetingWishlist
- (void)bindAuthenticatedAtEventAtTarget:(NSInteger)targetID;
- (void)dismissAuthenticatedAtEventAtTarget:(NSInteger)targetID;
- (void)findAuthenticatedAtEvent;
@end
