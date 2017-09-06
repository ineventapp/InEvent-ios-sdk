#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSpeakerTagAPIController : INAPIController

#pragma mark - SpeakerTag
- (void)bindAuthenticatedAtSpeaker:(NSInteger)speakerID atTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtSpeaker:(NSInteger)speakerID atTag:(NSInteger)tagID;
- (void)findAtSpeaker:(NSInteger)speakerID;
@end