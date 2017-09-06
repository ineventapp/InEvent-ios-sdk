#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTagAPIController : INAPIController

#pragma mark - Tag
- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color;
- (void)editAuthenticatedAtTag:(NSInteger)tagID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtTag:(NSInteger)tagID;
- (void)removeAuthenticatedAtTag:(NSInteger)tagID;
@end