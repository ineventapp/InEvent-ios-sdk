#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDownloadAPIController : INAPIController

#pragma mark - Download
- (void)removeAuthenticatedAtDownload:(NSInteger)downloadID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
@end
