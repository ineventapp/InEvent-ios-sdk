#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorFavoriteAPIController : INAPIController

#pragma mark - SponsorFavorite
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
@end
