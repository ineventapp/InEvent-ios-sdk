#import "INDynamicsFieldAPIController.h"

@implementation INDynamicsFieldAPIController

#pragma mark - DynamicsField

- (void)bindAuthenticatedAtEventWithSource:(NSString *)source atFeedback:(NSInteger)feedbackID withMsdFieldTable:(NSString *)msdFieldTable withMsdFieldId:(NSString *)msdFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil && msdFieldTable != nil && msdFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"msdFieldTable" : msdFieldTable, @"msdFieldId" : msdFieldId}};

		[self objectWithModule:@"dynamics.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithSource:(NSString *)source withFormKey:(NSString *)formKey withMsdFieldTable:(NSString *)msdFieldTable withMsdFieldId:(NSString *)msdFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil && formKey != nil && msdFieldTable != nil && msdFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}, @"POST" : @{@"formKey" : formKey, @"msdFieldTable" : msdFieldTable, @"msdFieldId" : msdFieldId}};

		[self objectWithModule:@"dynamics.field" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtDynamicsField:(NSInteger)dynamicsFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"dynamicsFieldID" : [NSString stringWithFormat:@"%ld", (long)dynamicsFieldID]}};

		[self objectWithModule:@"dynamics.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"dynamics.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"dynamics.field" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtDynamicsField:(NSInteger)dynamicsFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"dynamicsFieldID" : [NSString stringWithFormat:@"%ld", (long)dynamicsFieldID]}};

		[self objectWithModule:@"dynamics.field" method:@"get" attributes:attributes];
	}
}

@end
