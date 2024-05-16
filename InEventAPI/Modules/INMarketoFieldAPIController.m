#import "INMarketoFieldAPIController.h"

@implementation INMarketoFieldAPIController

#pragma mark - MarketoField

- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withMkFieldId:(NSString *)mkFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && mkFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"mkFieldId" : mkFieldId}};

		[self objectWithModule:@"marketo.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey withMkFieldId:(NSString *)mkFieldId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && formKey != nil && mkFieldId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"formKey" : formKey, @"mkFieldId" : mkFieldId}};

		[self objectWithModule:@"marketo.field" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMarketoField:(NSInteger)marketoFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoFieldID" : [NSString stringWithFormat:@"%ld", (long)marketoFieldID]}};

		[self objectWithModule:@"marketo.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"marketo.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"marketo.field" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMarketoField:(NSInteger)marketoFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoFieldID" : [NSString stringWithFormat:@"%ld", (long)marketoFieldID]}};

		[self objectWithModule:@"marketo.field" method:@"get" attributes:attributes];
	}
}

@end
