#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorAPIController : INAPIController

#pragma mark - Sponsor
- (void)createAuthenticatedAtEventWithCompanyName:(NSString *)companyName withContactName:(NSString *)contactName withTelephone:(NSString *)telephone withEmail:(NSString *)email withWebsite:(NSString *)website withBio:(NSString *)bio withLogo:(NSString *)logo withCategory:(NSString *)category;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)findAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)favoritesAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)remainingQuotaAuthenticatedAtEvent;
@end