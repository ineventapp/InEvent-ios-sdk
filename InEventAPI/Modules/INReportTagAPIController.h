#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INReportTagAPIController : INAPIController

#pragma mark - ReportTag
- (void)bindAuthenticatedAtTag:(NSInteger)tagID atReport:(NSInteger)reportID;
- (void)dismissAuthenticatedAtTag:(NSInteger)tagID atReport:(NSInteger)reportID;
@end
