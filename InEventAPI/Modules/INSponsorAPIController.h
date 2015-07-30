#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorAPIController : INAPIController

#pragma mark - Sponsor
- (void)editAuthenticatedAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order;
- (void)getAuthenticatedAtSponsor:(NSInteger)sponsorID;
@end