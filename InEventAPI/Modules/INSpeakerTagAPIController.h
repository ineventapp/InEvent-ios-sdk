#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSpeakerTagAPIController : INAPIController

#pragma mark - SpeakerTag
- (void)bindAuthenticatedAtSpeaker:(NSInteger)speakerID atTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtSpeaker:(NSInteger)speakerID atTag:(NSInteger)tagID;
- (void)findAuthenticatedAtSpeaker:(NSInteger)speakerID;
- (void)findAtSpeaker:(NSInteger)speakerID;
@end
