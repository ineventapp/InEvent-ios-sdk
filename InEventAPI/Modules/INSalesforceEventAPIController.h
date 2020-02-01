#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceEventAPIController : INAPIController

#pragma mark - SalesforceEvent
- (void)getAuthenticatedAtEvent;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)syncAuthenticatedAtEvent;
@end
