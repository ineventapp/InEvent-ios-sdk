#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonTagAPIController : INAPIController

#pragma mark - PersonTag
- (void)bindAuthenticatedAtTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtTag:(NSInteger)tagID;
@end