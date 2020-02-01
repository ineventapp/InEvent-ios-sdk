#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INProfilePermissionAPIController : INAPIController

#pragma mark - ProfilePermission
- (void)bindAuthenticatedAtProfile:(NSInteger)profileID withKey:(NSString *)key;
- (void)dismissAuthenticatedAtProfile:(NSInteger)profileID withKey:(NSString *)key;
- (void)findAuthenticatedAtProfile:(NSInteger)profileID;
@end
