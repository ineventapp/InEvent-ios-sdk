#import "INGamificationAPIController.h"

@implementation INGamificationAPIController

#pragma mark - Gamification

- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withPoints:(NSString *)points withVisible:(NSString *)visible {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && description != nil && points != nil && visible != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"description" : description, @"points" : points, @"visible" : visible}};

		[self objectWithModule:@"gamification" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtGamification:(NSInteger)gamificationID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"gamification" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtGamification:(NSInteger)gamificationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID]}};

		[self objectWithModule:@"gamification" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithVisible:(NSString *)visible {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && visible != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"visible" : visible}};

		[self objectWithModule:@"gamification" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtGamification:(NSInteger)gamificationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID]}};

		[self objectWithModule:@"gamification" method:@"get" attributes:attributes];
	}
}

- (void)leaderboardAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"gamification" method:@"leaderboard" attributes:attributes];
	}
}

@end
