#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INGamificationAPIController : INAPIController

#pragma mark - Gamification
- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withPoints:(NSString *)points;
- (void)editAuthenticatedAtGamification:(NSInteger)gamificationID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)leaderboardAuthenticatedAtEvent;
@end
