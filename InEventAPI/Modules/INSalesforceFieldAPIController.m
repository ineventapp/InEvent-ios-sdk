#import "INSalesforceFieldAPIController.h"

@implementation INSalesforceFieldAPIController

#pragma mark - SalesforceField

- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withSfFieldId:(NSString *)sfFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && sfFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"sfFieldId" : sfFieldId}};

		[self objectWithModule:@"salesforce.field" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"salesforceFieldID" : [NSString stringWithFormat:@"%ld", (long)salesforceFieldID]}};

		[self objectWithModule:@"salesforce.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"salesforce.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"salesforce.field" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"salesforceFieldID" : [NSString stringWithFormat:@"%ld", (long)salesforceFieldID]}};

		[self objectWithModule:@"salesforce.field" method:@"get" attributes:attributes];
	}
}

@end
