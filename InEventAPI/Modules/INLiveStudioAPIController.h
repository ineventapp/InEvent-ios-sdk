#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveStudioAPIController : INAPIController

#pragma mark - LiveStudio
- (void)editAuthenticatedAtLive:(NSInteger)liveID withKey:(NSString *)key withValue:(NSString *)value;
@end
