#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAdAPIController : INAPIController

#pragma mark - Ad
- (void)createAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)editAuthenticatedAtAd:(NSInteger)adID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtAd:(NSInteger)adID;
- (void)findAtEventAtSponsor:(NSInteger)sponsorID;
- (void)findAtEventWithSelection:(NSString *)selection;
@end