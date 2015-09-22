#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAdAPIController : INAPIController

#pragma mark - Ad
- (void)createAuthenticatedAtSponsorship:(NSInteger)sponsorshipID;
- (void)editAuthenticatedAtAd:(NSInteger)adID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtAd:(NSInteger)adID;
- (void)findAtSponsorship:(NSInteger)sponsorshipID;
- (void)findAtEvent;
@end