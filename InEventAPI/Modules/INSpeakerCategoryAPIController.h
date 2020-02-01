#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSpeakerCategoryAPIController : INAPIController

#pragma mark - SpeakerCategory
- (void)createAuthenticatedAtEventWithName:(NSString *)name withPosition:(NSString *)position;
- (void)editAuthenticatedAtEventAtSpeakerCategory:(NSInteger)speakerCategoryID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtSpeakerCategory:(NSInteger)speakerCategoryID;
- (void)getAuthenticatedAtEventWithName:(NSString *)name;
- (void)findAuthenticatedAtEvent;
@end
