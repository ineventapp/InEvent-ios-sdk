#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTriggerLogAPIController : INAPIController

#pragma mark - TriggerLog
- (void)bindAuthenticatedAtTrigger:(NSInteger)triggerID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtEventAtTriggerLog:(NSInteger)triggerLogID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtTrigger:(NSInteger)triggerID;
@end
