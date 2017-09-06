#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAnalyticsAPIController : INAPIController

#pragma mark - Analytics
- (void)getAuthenticatedAtEventWithPage:(NSString *)page;
@end