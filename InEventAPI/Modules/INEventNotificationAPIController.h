#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventNotificationAPIController : INAPIController

#pragma mark - EventNotification
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
