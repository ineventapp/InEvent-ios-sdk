#import "INAnalyticsAPIController.h"

@implementation INAnalyticsAPIController

#pragma mark - Analytics

- (void)getAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"analytics" method:@"get" attributes:attributes];
	}
}

@end