#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorInviteAPIController : INAPIController

#pragma mark - SponsorInvite
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withUsername:(NSString *)username;
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID atList:(NSInteger)listID;
- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withExhibitor:(NSString *)exhibitor;
@end
