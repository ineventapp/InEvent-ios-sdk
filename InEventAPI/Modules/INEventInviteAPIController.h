#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventInviteAPIController : INAPIController

#pragma mark - EventInvite
- (void)createAuthenticatedAtEventWithValue:(NSString *)value withSource:(NSString *)source;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)removeAuthenticatedAtEventInvite:(NSInteger)eventInviteID;
- (void)findAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)getAtEventWithValue:(NSString *)value;
- (void)availableAtEventWithValue:(NSString *)value;
@end