#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INGamificationPersonAPIController : INAPIController

#pragma mark - GamificationPerson
- (void)bindAuthenticatedAtGamification:(NSInteger)gamificationID withName:(NSString *)name withUsername:(NSString *)username;
- (void)bindAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)operateAuthenticatedAtGamification:(NSInteger)gamificationID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)dismissAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)findAuthenticatedAtGamification:(NSInteger)gamificationID withSelection:(NSString *)selection;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
