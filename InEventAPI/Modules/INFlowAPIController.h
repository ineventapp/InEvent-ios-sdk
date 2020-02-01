#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFlowAPIController : INAPIController

#pragma mark - Flow
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
@end
