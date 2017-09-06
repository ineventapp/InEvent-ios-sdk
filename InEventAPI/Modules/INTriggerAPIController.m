#import "INTriggerAPIController.h"

@implementation INTriggerAPIController

#pragma mark - Trigger

- (void)createAuthenticatedAtEventWithActionType:(NSString *)actionType atAction:(NSInteger)actionID withReactionType:(NSString *)reactionType atReaction:(NSInteger)reactionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && actionType != nil && reactionType != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"actionType" : actionType, @"actionID" : [NSString stringWithFormat:@"%ld", (long)actionID], @"reactionType" : reactionType, @"reactionID" : [NSString stringWithFormat:@"%ld", (long)reactionID]}};

		[self objectWithModule:@"trigger" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"trigger" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTrigger:(NSInteger)triggerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"triggerID" : [NSString stringWithFormat:@"%ld", (long)triggerID]}};

		[self objectWithModule:@"trigger" method:@"remove" attributes:attributes];
	}
}

@end