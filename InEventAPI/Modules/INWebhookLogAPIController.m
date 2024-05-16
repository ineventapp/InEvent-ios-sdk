#import "INWebhookLogAPIController.h"

@implementation INWebhookLogAPIController

#pragma mark - WebhookLog

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"webhook.log" method:@"find" attributes:attributes];
	}
}

@end
