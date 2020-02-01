#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorTagAPIController : INAPIController

#pragma mark - SponsorTag
- (void)bindAuthenticatedAtSponsor:(NSInteger)sponsorID atTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtSponsor:(NSInteger)sponsorID atTag:(NSInteger)tagID;
- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID;
- (void)findAtSponsor:(NSInteger)sponsorID;
@end
