#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INChatAPIController : INAPIController

#pragma mark - Chat
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withMessage:(NSString *)message;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtChat:(NSInteger)chatID;
- (void)viewAuthenticatedAtEventForPerson:(NSInteger)personID;
@end