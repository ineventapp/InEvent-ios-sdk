#import "INSalesforceEventAPIController.h"

@implementation INSalesforceEventAPIController

#pragma mark - SalesforceEvent

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"salesforce.event" method:@"get" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"salesforce.event" method:@"edit" attributes:attributes];
	}
}

- (void)syncAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"salesforce.event" method:@"sync" attributes:attributes];
	}
}

- (void)logsAuthenticatedAtEventWithQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query}};

		[self objectWithModule:@"salesforce.event" method:@"logs" attributes:attributes];
	}
}

- (void)getCustomLinkAuthenticatedAtEventWithInObject:(NSString *)inObject {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && inObject != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"inObject" : inObject}};

		[self objectWithModule:@"salesforce.event" method:@"getCustomLink" attributes:attributes];
	}
}

- (void)editCustomLinkAuthenticatedAtEventWithInObject:(NSString *)inObject withKey:(NSString *)key withValue:(NSString *)value withSfFieldValue:(NSString *)sfFieldValue {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && inObject != nil && key != nil && value != nil && sfFieldValue != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"inObject" : inObject, @"key" : key}, @"POST" : @{@"value" : value, @"sfFieldValue" : sfFieldValue}};

		[self objectWithModule:@"salesforce.event" method:@"editCustomLink" attributes:attributes];
	}
}

- (void)createCampaignAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"salesforce.event" method:@"createCampaign" attributes:attributes];
	}
}

@end
