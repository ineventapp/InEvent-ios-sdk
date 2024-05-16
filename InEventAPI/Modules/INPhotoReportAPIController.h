#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPhotoReportAPIController : INAPIController

#pragma mark - PhotoReport
- (void)bindAuthenticatedAtEventAtPhoto:(NSInteger)photoID withMessage:(NSString *)message;
- (void)dismissAuthenticatedAtPhotoReport:(NSInteger)photoReportID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtPhotoReport:(NSInteger)photoReportID;
@end
