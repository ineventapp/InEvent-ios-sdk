#import "INAiAPIController.h"

@implementation INAiAPIController

#pragma mark - Ai

- (void)promptAuthenticatedAtEventWithModel:(NSString *)model withPrompt:(NSString *)prompt {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && model != nil && prompt != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"model" : model, @"prompt" : prompt}};

		[self objectWithModule:@"ai" method:@"prompt" attributes:attributes];
	}
}

@end
