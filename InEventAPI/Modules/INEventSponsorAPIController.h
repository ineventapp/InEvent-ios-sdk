#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventSponsorAPIController : INAPIController

#pragma mark - EventSponsor
- (void)bindAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone;
- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)operateAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withPosition:(NSString *)position withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)getAuthenticatedAtSponsorship:(NSInteger)sponsorshipID;
@end