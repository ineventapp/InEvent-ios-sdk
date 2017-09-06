#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListSmsAPIController : INAPIController

#pragma mark - ListSms
- (void)createAuthenticatedAtList:(NSInteger)listID withText:(NSString *)text;
- (void)removeAuthenticatedAtListSms:(NSInteger)listSmsID;
- (void)editAuthenticatedAtListSms:(NSInteger)listSmsID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)previewAuthenticatedAtListSms:(NSInteger)listSmsID;
- (void)sendAuthenticatedAtListSms:(NSInteger)listSmsID;
@end