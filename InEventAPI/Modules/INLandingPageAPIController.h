#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLandingPageAPIController : INAPIController

#pragma mark - LandingPage
- (void)bindAuthenticatedAtLanding:(NSInteger)landingID withPath:(NSString *)path withFile:(NSString *)file;
- (void)operateAuthenticatedAtLandingPage:(NSInteger)landingPageID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtLandingPage:(NSInteger)landingPageID;
- (void)findAuthenticatedAtLanding:(NSInteger)landingID;
- (void)getAuthenticatedAtLandingPage:(NSInteger)landingPageID;
@end
