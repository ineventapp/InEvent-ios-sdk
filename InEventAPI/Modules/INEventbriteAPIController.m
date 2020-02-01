#import "INEventbriteAPIController.h"

@implementation INEventbriteAPIController

#pragma mark - Eventbrite

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"eventbrite" method:@"get" attributes:attributes];
	}
}

- (void)linkFieldAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atEbField:(NSInteger)ebFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"ebFieldID" : [NSString stringWithFormat:@"%ld", (long)ebFieldID]}};

		[self objectWithModule:@"eventbrite" method:@"linkField" attributes:attributes];
	}
}

@end
