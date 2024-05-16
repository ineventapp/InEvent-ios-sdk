#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveTranslationAPIController : INAPIController

#pragma mark - LiveTranslation
- (void)createAuthenticatedAtLive:(NSInteger)liveID withLanguage:(NSString *)language;
- (void)editAuthenticatedAtLiveTranslation:(NSInteger)liveTranslationID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtLiveTranslation:(NSInteger)liveTranslationID;
- (void)findAuthenticatedAtLive:(NSInteger)liveID;
@end
