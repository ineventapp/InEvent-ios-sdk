#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INReportTemplateAPIController : INAPIController

#pragma mark - ReportTemplate
- (void)createAuthenticatedAtReport:(NSInteger)reportID atTemplate:(NSInteger)templateID;
@end
