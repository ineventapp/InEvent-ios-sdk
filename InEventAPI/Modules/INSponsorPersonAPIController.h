#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorPersonAPIController : INAPIController

#pragma mark - SponsorPerson
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withUsername:(NSString *)username;
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID atList:(NSInteger)listID;
- (void)bindAuthenticatedAtEventWithPath:(NSString *)path;
- (void)operateAuthenticatedAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withExhibitor:(NSString *)exhibitor;
- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID forPerson:(NSInteger)personID;
@end
