#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivitySpeakerAPIController : INAPIController

#pragma mark - ActivitySpeaker
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID atSpeaker:(NSInteger)speakerID;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID atSpeaker:(NSInteger)speakerID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtSpeaker:(NSInteger)speakerID;
@end
