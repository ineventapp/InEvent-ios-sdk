#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorInviteAPIController : INAPIController

#pragma mark - SponsorInvite
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withUsername:(NSString *)username;
- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
@end