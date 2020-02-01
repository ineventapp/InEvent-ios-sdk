#import "INWebhookAPIController.h"

@implementation INWebhookAPIController

#pragma mark - Webhook

- (void)createAuthenticatedAtEventWithType:(NSString *)type withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"type" : type, @"url" : url}};

		[self objectWithModule:@"webhook" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtWebhook:(NSInteger)webhookID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"webhookID" : [NSString stringWithFormat:@"%ld", (long)webhookID]}};

		[self objectWithModule:@"webhook" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"webhook" method:@"find" attributes:attributes];
	}
}

- (void)requestExampleAuthenticatedAtWebhook:(NSInteger)webhookID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"webhookID" : [NSString stringWithFormat:@"%ld", (long)webhookID]}};

		[self objectWithModule:@"webhook" method:@"requestExample" attributes:attributes];
	}
}

- (void)responseExampleAuthenticatedAtWebhook:(NSInteger)webhookID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"webhookID" : [NSString stringWithFormat:@"%ld", (long)webhookID]}};

		[self objectWithModule:@"webhook" method:@"responseExample" attributes:attributes];
	}
}

@end
