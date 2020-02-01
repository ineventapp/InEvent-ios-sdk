#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAppAPIController : INAPIController

#pragma mark - App
- (void)createAuthenticatedWithTitle:(NSString *)title;
- (void)editAuthenticatedAtApp:(NSInteger)appID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtApp:(NSInteger)appID;
- (void)findAuthenticated;
- (void)getAuthenticatedAtApp:(NSInteger)appID;
@end
