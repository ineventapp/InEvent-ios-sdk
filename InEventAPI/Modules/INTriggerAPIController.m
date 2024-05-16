#import "INTriggerAPIController.h"

@implementation INTriggerAPIController

#pragma mark - Trigger

- (void)createAuthenticatedAtEventWithActionType:(NSString *)actionType atAction:(NSInteger)actionID withReactionType:(NSString *)reactionType atReaction:(NSInteger)reactionID withReactionDelay:(NSString *)reactionDelay {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && actionType != nil && reactionType != nil && reactionDelay != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"actionType" : actionType, @"actionID" : [NSString stringWithFormat:@"%ld", (long)actionID], @"reactionType" : reactionType, @"reactionID" : [NSString stringWithFormat:@"%ld", (long)reactionID], @"reactionDelay" : reactionDelay}};

		[self objectWithModule:@"trigger" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTrigger:(NSInteger)triggerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"triggerID" : [NSString stringWithFormat:@"%ld", (long)triggerID]}};

		[self objectWithModule:@"trigger" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventWithReaction:(NSString *)reaction atReaction:(NSInteger)reactionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && reaction != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"reaction" : reaction, @"reactionID" : [NSString stringWithFormat:@"%ld", (long)reactionID]}};

		[self objectWithModule:@"trigger" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithFilterAction:(NSString *)filterAction atFilterAction:(NSInteger)filterActionID withFilterReaction:(NSString *)filterReaction atFilterReaction:(NSInteger)filterReactionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && filterAction != nil && filterReaction != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"filterAction" : filterAction, @"filterActionID" : [NSString stringWithFormat:@"%ld", (long)filterActionID], @"filterReaction" : filterReaction, @"filterReactionID" : [NSString stringWithFormat:@"%ld", (long)filterReactionID]}};

		[self objectWithModule:@"trigger" method:@"find" attributes:attributes];
	}
}

@end
