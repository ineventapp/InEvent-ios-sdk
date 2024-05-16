#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTranslationAPIController : INAPIController

#pragma mark - Translation
- (void)bindAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withGenerate:(NSString *)generate withLang:(NSString *)lang withColumn:(NSString *)column withText:(NSString *)text;
- (void)dismissAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withLang:(NSString *)lang withColumn:(NSString *)column;
- (void)dismissAllAuthenticatedAtEventWithLang:(NSString *)lang;
- (void)findAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withColumn:(NSString *)column;
- (void)getAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withLang:(NSString *)lang;
- (void)availableAuthenticated;
- (void)enabledAtEventWithWithAnalytics:(NSString *)withAnalytics;
- (void)translateMissingAuthenticatedAtEventWithResource:(NSString *)resource withLanguages:(NSString *)languages;
- (void)findTranslationsAuthenticatedAtEventWithResource:(NSString *)resource;
- (void)analyticsAuthenticatedAtEvent;
@end
