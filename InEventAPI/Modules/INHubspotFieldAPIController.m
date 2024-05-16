#import "INHubspotFieldAPIController.h"

@implementation INHubspotFieldAPIController

#pragma mark - HubspotField

- (void)bindAuthenticatedAtEventWithSource:(NSString *)source atFeedback:(NSInteger)feedbackID atHsField:(NSInteger)hsFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"hsFieldID" : [NSString stringWithFormat:@"%ld", (long)hsFieldID]}};

		[self objectWithModule:@"hubspot.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithSource:(NSString *)source withFormKey:(NSString *)formKey atHsField:(NSInteger)hsFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil && formKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}, @"POST" : @{@"formKey" : formKey, @"hsFieldID" : [NSString stringWithFormat:@"%ld", (long)hsFieldID]}};

		[self objectWithModule:@"hubspot.field" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtHubspotField:(NSInteger)hubspotFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hubspotFieldID" : [NSString stringWithFormat:@"%ld", (long)hubspotFieldID]}};

		[self objectWithModule:@"hubspot.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"hubspot.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"hubspot.field" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtHubspotField:(NSInteger)hubspotFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"hubspotFieldID" : [NSString stringWithFormat:@"%ld", (long)hubspotFieldID]}};

		[self objectWithModule:@"hubspot.field" method:@"get" attributes:attributes];
	}
}

@end
