#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDynamicsEventAPIController : INAPIController

#pragma mark - DynamicsEvent
- (void)getAuthenticatedAtEvent;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)syncAuthenticatedAtEvent;
- (void)createAndExportAuthenticatedAtEvent;
- (void)errorLogsAuthenticatedAtEventWithQuery:(NSString *)query;
@end
