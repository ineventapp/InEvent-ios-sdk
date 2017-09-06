#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListEmailAPIController : INAPIController

#pragma mark - ListEmail
- (void)createAuthenticatedAtList:(NSInteger)listID withSubject:(NSString *)subject withText:(NSString *)text;
- (void)createAuthenticatedAtEventWithSubject:(NSString *)subject withText:(NSString *)text withSelection:(NSString *)selection;
- (void)removeAuthenticatedAtListEmail:(NSInteger)listEmailID;
- (void)editAuthenticatedAtListEmail:(NSInteger)listEmailID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)sendAuthenticatedAtListEmail:(NSInteger)listEmailID;
- (void)previewAuthenticatedAtListEmail:(NSInteger)listEmailID;
@end