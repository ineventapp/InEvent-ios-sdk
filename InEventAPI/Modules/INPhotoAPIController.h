#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPhotoAPIController : INAPIController

#pragma mark - Photo
- (void)createAuthenticatedAtEventWithUrl:(NSString *)url;
- (void)removeAuthenticatedAtPhoto:(NSInteger)photoID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtPhoto:(NSInteger)photoID;
@end