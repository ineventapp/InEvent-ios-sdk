#import "INSalesforceFieldAPIController.h"

@implementation INSalesforceFieldAPIController

#pragma mark - SalesforceField

- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withSfFieldTable:(NSString *)sfFieldTable withSfFieldId:(NSString *)sfFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && sfFieldTable != nil && sfFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"sfFieldTable" : sfFieldTable, @"sfFieldId" : sfFieldId}};

		[self objectWithModule:@"salesforce.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey withSfFieldTable:(NSString *)sfFieldTable withSfFieldId:(NSString *)sfFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && formKey != nil && sfFieldTable != nil && sfFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"formKey" : formKey, @"sfFieldTable" : sfFieldTable, @"sfFieldId" : sfFieldId}};

		[self objectWithModule:@"salesforce.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withSfFieldTables:(NSString *)sfFieldTables withSfFieldIds:(NSString *)sfFieldIds {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && sfFieldTables != nil && sfFieldIds != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"sfFieldTables" : sfFieldTables, @"sfFieldIds" : sfFieldIds}};

		[self objectWithModule:@"salesforce.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey withSfFieldTables:(NSString *)sfFieldTables withSfFieldIds:(NSString *)sfFieldIds {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && formKey != nil && sfFieldTables != nil && sfFieldIds != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"formKey" : formKey, @"sfFieldTables" : sfFieldTables, @"sfFieldIds" : sfFieldIds}};

		[self objectWithModule:@"salesforce.field" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"salesforceFieldID" : [NSString stringWithFormat:@"%ld", (long)salesforceFieldID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"salesforce.field" method:@"operate" attributes:attributes];
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

- (void)dismissAuthenticatedAtEventWithSfFieldTable:(NSString *)sfFieldTable withSfFieldId:(NSString *)sfFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && sfFieldTable != nil && sfFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"sfFieldTable" : sfFieldTable, @"sfFieldId" : sfFieldId}};

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
