#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorAPIController : INAPIController

#pragma mark - Sponsor
- (void)createAuthenticatedAtEventWithCompanyName:(NSString *)companyName withContactName:(NSString *)contactName withTelephone:(NSString *)telephone withEmail:(NSString *)email withWebsite:(NSString *)website withBio:(NSString *)bio withLogo:(NSString *)logo withCategory:(NSString *)category withIgnoreCache:(NSString *)ignoreCache withExhibitor:(NSString *)exhibitor;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value withExhibitor:(NSString *)exhibitor;
- (void)removeAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEventWithCategorized:(NSString *)categorized withCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order withExhibitor:(NSString *)exhibitor;
- (void)findAuthenticatedAtEventWithCategorized:(NSString *)categorized;
- (void)findAtEventWithCategorized:(NSString *)categorized withCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order;
- (void)findAtEventWithCategorized:(NSString *)categorized;
- (void)getAuthenticatedAtSponsor:(NSInteger)sponsorID;
- (void)getAtSponsor:(NSInteger)sponsorID;
- (void)redeemAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)favoritesAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)remainingQuotaAuthenticatedAtEvent;
@end
