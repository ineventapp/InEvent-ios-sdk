#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INReportEventAPIController : INAPIController

#pragma mark - ReportEvent
- (void)createAuthenticatedAtEventAtReport:(NSInteger)reportID;
@end
