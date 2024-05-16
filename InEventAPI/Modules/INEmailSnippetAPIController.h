#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEmailSnippetAPIController : INAPIController

#pragma mark - EmailSnippet
- (void)createAuthenticatedAtEventWithName:(NSString *)name withIcon:(NSString *)icon withHtml:(NSString *)html;
- (void)editAuthenticatedAtEmailSnippet:(NSInteger)emailSnippetID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEmailSnippet:(NSInteger)emailSnippetID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtEmailSnippet:(NSInteger)emailSnippetID;
@end
