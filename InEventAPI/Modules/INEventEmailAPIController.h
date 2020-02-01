#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventEmailAPIController : INAPIController

#pragma mark - EventEmail
- (void)createAuthenticatedAtEventWithSubject:(NSString *)subject withText:(NSString *)text atList:(NSInteger)listID;
- (void)editAuthenticatedAtEventWithSource:(NSString *)source withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtEventEmail:(NSInteger)eventEmailID;
- (void)tryAuthenticatedAtEventWithSource:(NSString *)source;
- (void)dispatchAuthenticatedAtEventEmail:(NSInteger)eventEmailID;
@end
