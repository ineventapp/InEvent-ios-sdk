#import "INMarketoAPIController.h"

@implementation INMarketoAPIController

#pragma mark - Marketo

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"marketo" method:@"get" attributes:attributes];
	}
}

- (void)linkFieldAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atMkField:(NSInteger)mkFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"mkFieldID" : [NSString stringWithFormat:@"%ld", (long)mkFieldID]}};

		[self objectWithModule:@"marketo" method:@"linkField" attributes:attributes];
	}
}

@end