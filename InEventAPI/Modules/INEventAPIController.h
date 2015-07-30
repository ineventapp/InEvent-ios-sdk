#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventAPIController : INAPIController

#pragma mark - Event
- (void)createAuthenticatedWithName:(NSString *)name withNickname:(NSString *)nickname;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEvent;
- (void)findAuthenticatedWithSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)findWithName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)getAuthenticatedAtEvent;
- (void)getAtEvent;
- (void)checkAccessCodeAuthenticatedAtEventWithAccessCode:(NSString *)accessCode;
- (void)statisticsAuthenticatedAtEvent;
@end