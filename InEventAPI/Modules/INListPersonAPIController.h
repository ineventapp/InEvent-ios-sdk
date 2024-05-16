#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListPersonAPIController : INAPIController

#pragma mark - ListPerson
- (void)bindAuthenticatedAtList:(NSInteger)listID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtList:(NSInteger)listID withContent:(NSString *)content;
- (void)bindAuthenticatedAtList:(NSInteger)listID withName:(NSString *)name withUsername:(NSString *)username;
- (void)bindAtList:(NSInteger)listID withName:(NSString *)name withEmail:(NSString *)email;
- (void)bindAuthenticatedAtList:(NSInteger)listID withPath:(NSString *)path;
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)operateAuthenticatedAtList:(NSInteger)listID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)dismissAuthenticatedAtList:(NSInteger)listID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtList:(NSInteger)listID withContent:(NSString *)content;
- (void)findAuthenticatedAtList:(NSInteger)listID withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order withFillGaps:(NSString *)fillGaps;
- (void)getAuthenticatedAtEventAtList:(NSInteger)listID forPerson:(NSInteger)personID withLast:(NSString *)last;
- (void)dismissAllAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
