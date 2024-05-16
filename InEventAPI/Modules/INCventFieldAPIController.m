#import "INCventFieldAPIController.h"

@implementation INCventFieldAPIController

#pragma mark - CventField

- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atCvField:(NSInteger)cvFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"cvFieldID" : [NSString stringWithFormat:@"%ld", (long)cvFieldID]}};

		[self objectWithModule:@"cvent.field" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey atCvField:(NSInteger)cvFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && formKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"formKey" : formKey, @"cvFieldID" : [NSString stringWithFormat:@"%ld", (long)cvFieldID]}};

		[self objectWithModule:@"cvent.field" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCventField:(NSInteger)cventFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"cventFieldID" : [NSString stringWithFormat:@"%ld", (long)cventFieldID]}};

		[self objectWithModule:@"cvent.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"cvent.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"cvent.field" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCventField:(NSInteger)cventFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"cventFieldID" : [NSString stringWithFormat:@"%ld", (long)cventFieldID]}};

		[self objectWithModule:@"cvent.field" method:@"get" attributes:attributes];
	}
}

- (void)getCventFieldsAuthenticatedAtEventWithRefresh:(NSString *)refresh {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && refresh != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"refresh" : refresh}};

		[self objectWithModule:@"cvent.field" method:@"getCventFields" attributes:attributes];
	}
}

@end
