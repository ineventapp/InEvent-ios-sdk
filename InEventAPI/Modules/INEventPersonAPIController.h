#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventPersonAPIController : INAPIController

#pragma mark - EventPerson
- (void)bindAuthenticatedAtEvent;
- (void)bindAuthenticatedAtEventWithName:(NSString *)name withEmail:(NSString *)email;
- (void)bindAuthenticatedAtEventWithPath:(NSString *)path;
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtEvent;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)sendMailAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAuthenticatedAtEvent;
@end