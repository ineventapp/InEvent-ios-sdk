#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTriggerAPIController : INAPIController

#pragma mark - Trigger
- (void)createAuthenticatedAtEventWithActionType:(NSString *)actionType atAction:(NSInteger)actionID withReactionType:(NSString *)reactionType atReaction:(NSInteger)reactionID withReactionDelay:(NSString *)reactionDelay;
- (void)removeAuthenticatedAtTrigger:(NSInteger)triggerID;
- (void)removeAuthenticatedAtEventWithReaction:(NSString *)reaction atReaction:(NSInteger)reactionID;
- (void)findAuthenticatedAtEventWithFilterAction:(NSString *)filterAction atFilterAction:(NSInteger)filterActionID withFilterReaction:(NSString *)filterReaction atFilterReaction:(NSInteger)filterReactionID;
@end
