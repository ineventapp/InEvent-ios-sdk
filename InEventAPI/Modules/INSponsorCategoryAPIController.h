#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSponsorCategoryAPIController : INAPIController

#pragma mark - SponsorCategory
- (void)createAuthenticatedAtEventWithName:(NSString *)name withPosition:(NSString *)position;
- (void)editAuthenticatedAtEventAtSponsorCategory:(NSInteger)sponsorCategoryID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtSponsorCategory:(NSInteger)sponsorCategoryID;
- (void)getAuthenticatedAtEventWithName:(NSString *)name;
- (void)findAuthenticatedAtEventWithExhibitor:(NSString *)exhibitor;
@end
