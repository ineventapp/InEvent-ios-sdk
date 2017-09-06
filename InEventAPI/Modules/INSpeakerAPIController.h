#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSpeakerAPIController : INAPIController

#pragma mark - Speaker
- (void)createAuthenticatedAtEventWithName:(NSString *)name withHeadline:(NSString *)headline withImage:(NSString *)image;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtSpeaker:(NSInteger)speakerID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtSpeaker:(NSInteger)speakerID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtSpeaker:(NSInteger)speakerID;
@end