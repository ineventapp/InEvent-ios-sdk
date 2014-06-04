#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPhotoAPIController : INAPIController

#pragma mark - Photo
- (void)createAuthenticatedAtEventWithUrl:(NSString *)url;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtPhoto:(NSInteger)photoID;

@end