#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListPushAPIController : INAPIController

#pragma mark - ListPush
- (void)createAuthenticatedAtList:(NSInteger)listID withText:(NSString *)text;
- (void)removeAuthenticatedAtListPush:(NSInteger)listPushID;
- (void)editAuthenticatedAtListPush:(NSInteger)listPushID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEvent;
- (void)sendAuthenticatedAtListPush:(NSInteger)listPushID;
@end