#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListSmsAPIController : INAPIController

#pragma mark - ListSms
- (void)createAuthenticatedAtList:(NSInteger)listID withSelection:(NSString *)selection withText:(NSString *)text;
- (void)editAuthenticatedAtListSms:(NSInteger)listSmsID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtListSms:(NSInteger)listSmsID;
- (void)findAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)previewAuthenticatedAtListSms:(NSInteger)listSmsID;
- (void)sendAuthenticatedAtListSms:(NSInteger)listSmsID;
@end
