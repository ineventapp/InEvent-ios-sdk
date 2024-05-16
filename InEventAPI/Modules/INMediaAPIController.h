#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMediaAPIController : INAPIController

#pragma mark - Media
- (void)createAuthenticatedWithUrl:(NSString *)url withType:(NSString *)type withSize:(NSString *)size;
- (void)findAuthenticated;
- (void)getAuthenticatedAtMedia:(NSInteger)mediaID;
- (void)generateUploadUrlAuthenticatedWithFilename:(NSString *)filename withFolder:(NSString *)folder withContentType:(NSString *)contentType;
@end
