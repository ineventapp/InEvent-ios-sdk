#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListAPIController : INAPIController

#pragma mark - List
- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color;
- (void)editAuthenticatedAtList:(NSInteger)listID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtList:(NSInteger)listID;
- (void)getAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEvent;
@end