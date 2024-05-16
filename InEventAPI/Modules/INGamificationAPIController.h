#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INGamificationAPIController : INAPIController

#pragma mark - Gamification
- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withPoints:(NSString *)points withVisible:(NSString *)visible;
- (void)editAuthenticatedAtGamification:(NSInteger)gamificationID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)findAuthenticatedAtEventWithVisible:(NSString *)visible;
- (void)getAuthenticatedAtGamification:(NSInteger)gamificationID;
- (void)leaderboardAuthenticatedAtEvent;
@end
