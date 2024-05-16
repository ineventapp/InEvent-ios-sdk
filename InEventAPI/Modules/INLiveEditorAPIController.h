#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiveEditorAPIController : INAPIController

#pragma mark - LiveEditor
- (void)createOrUpdateAuthenticatedAtLiveEditor:(NSInteger)liveEditorID withLayout:(NSString *)layout withPriority:(NSString *)priority withElement:(NSString *)element withSelector:(NSString *)selector withOverrideRules:(NSString *)overrideRules withCss:(NSString *)css;
- (void)removeAuthenticatedAtLiveEditor:(NSInteger)liveEditorID;
- (void)removeAllAuthenticatedWithLayout:(NSString *)layout;
- (void)findAuthenticatedWithLayout:(NSString *)layout;
- (void)getAuthenticatedAtLiveEditor:(NSInteger)liveEditorID;
@end
