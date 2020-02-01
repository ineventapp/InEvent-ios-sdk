#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLandingAPIController : INAPIController

#pragma mark - Landing
- (void)createAuthenticatedAtEventWithName:(NSString *)name withCname:(NSString *)cname;
- (void)editAuthenticatedAtLanding:(NSInteger)landingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtLanding:(NSInteger)landingID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtLanding:(NSInteger)landingID;
- (void)putAuthenticatedAtLanding:(NSInteger)landingID withFile:(NSString *)file withUrl:(NSString *)url;
- (void)deleteAuthenticatedAtLanding:(NSInteger)landingID withFile:(NSString *)file;
@end
