#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventGuestAPIController : INAPIController

#pragma mark - EventGuest
- (void)bindAuthenticatedAtEventAtHost:(NSInteger)hostID withName:(NSString *)name withEmail:(NSString *)email;
- (void)bindAuthenticatedAtEventWithName:(NSString *)name withEmail:(NSString *)email;
- (void)operateAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID withKey:(NSString *)key withValue:(NSString *)value;
- (void)operateAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID withContent:(NSString *)content;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID;
- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID atHost:(NSInteger)hostID;
@end
