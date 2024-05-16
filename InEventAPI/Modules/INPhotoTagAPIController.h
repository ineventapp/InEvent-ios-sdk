#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPhotoTagAPIController : INAPIController

#pragma mark - PhotoTag
- (void)bindAuthenticatedAtPhoto:(NSInteger)photoID atTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtPhoto:(NSInteger)photoID atTag:(NSInteger)tagID;
- (void)findAuthenticatedAtPhoto:(NSInteger)photoID;
@end
