#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListEmailAPIController : INAPIController

#pragma mark - ListEmail
- (void)createAuthenticatedAtList:(NSInteger)listID withSubject:(NSString *)subject withHtml:(NSString *)html;
- (void)createAuthenticatedAtEventWithSubject:(NSString *)subject withHtml:(NSString *)html withSelection:(NSString *)selection;
- (void)createAuthenticatedAtEventWithSource:(NSString *)source;
- (void)editAuthenticatedAtListEmail:(NSInteger)listEmailID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtListEmail:(NSInteger)listEmailID;
- (void)findAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtListEmail:(NSInteger)listEmailID;
- (void)sendAuthenticatedAtListEmail:(NSInteger)listEmailID;
- (void)copyAuthenticatedAtListEmail:(NSInteger)listEmailID atList:(NSInteger)listID withSelection:(NSString *)selection withSubject:(NSString *)subject;
- (void)previewAuthenticatedAtListEmail:(NSInteger)listEmailID forPerson:(NSInteger)personID;
- (void)statsAuthenticatedAtListEmail:(NSInteger)listEmailID;
@end
