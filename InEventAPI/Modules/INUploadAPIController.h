#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INUploadAPIController : INAPIController

#pragma mark - Upload
- (void)removeAuthenticatedAtUpload:(NSInteger)uploadID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
@end
