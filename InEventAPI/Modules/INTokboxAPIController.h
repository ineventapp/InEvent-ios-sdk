#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTokboxAPIController : INAPIController

#pragma mark - Tokbox
- (void)createDirectUploadAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID;
@end
