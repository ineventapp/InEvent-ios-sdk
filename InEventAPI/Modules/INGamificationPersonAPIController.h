#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INGamificationPersonAPIController : INAPIController

#pragma mark - GamificationPerson
- (void)bindAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)operateAuthenticatedAtGamification:(NSInteger)gamificationID forPerson:(NSInteger)personID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)findAuthenticatedAtGamification:(NSInteger)gamificationID withSelection:(NSString *)selection;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
@end