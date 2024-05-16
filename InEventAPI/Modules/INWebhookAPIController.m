#import "INWebhookAPIController.h"

@implementation INWebhookAPIController

#pragma mark - Webhook

- (void)createAuthenticatedAtEventAtCompany:(NSInteger)companyID withType:(NSString *)type withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"type" : type, @"url" : url}};

		[self objectWithModule:@"webhook" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtWebhook:(NSInteger)webhookID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"webhookID" : [NSString stringWithFormat:@"%ld", (long)webhookID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"webhook" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtWebhook:(NSInteger)webhookID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"webhookID" : [NSString stringWithFormat:@"%ld", (long)webhookID], @"eventID" : eventID}};

		[self objectWithModule:@"webhook" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

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
