#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventAPIController : INAPIController

#pragma mark - Event
- (void)createAuthenticatedWithName:(NSString *)name withNickname:(NSString *)nickname;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEvent;
- (void)getAuthenticatedAtEvent;
- (void)getAtEvent;
- (void)checkAccessCodeAuthenticatedAtEventWithAccessCode:(NSString *)accessCode;
- (void)statisticsAuthenticatedAtEvent;
@end