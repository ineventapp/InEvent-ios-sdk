#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventInviteAPIController : INAPIController

#pragma mark - EventInvite
- (void)createAuthenticatedAtEventWithEmail:(NSString *)email;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventWithEmail:(NSString *)email;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAtEventWithEmail:(NSString *)email;
- (void)rsvpAuthenticatedAtEventWithEmail:(NSString *)email;
- (void)rsvpAtEventWithEmail:(NSString *)email;
@end
