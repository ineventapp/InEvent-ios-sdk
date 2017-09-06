#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorPersonAPIController : INAPIController

#pragma mark - SponsorPerson
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withUsername:(NSString *)username;
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtEventWithPath:(NSString *)path;
- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
@end