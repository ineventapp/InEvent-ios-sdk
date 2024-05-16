#import "INEventAPIController.h"

@implementation INEventAPIController

#pragma mark - Event

- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID withQuickLoad:(NSString *)quickLoad withWithCss:(NSString *)withCss {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && quickLoad != nil && withCss != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"quickLoad" : quickLoad, @"withCss" : withCss}};

		[self objectWithModule:@"event" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithQuickLoad:(NSString *)quickLoad withWithCss:(NSString *)withCss {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && quickLoad != nil && withCss != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"quickLoad" : quickLoad, @"withCss" : withCss}};

		[self objectWithModule:@"event" method:@"get" attributes:attributes];
	}
}

- (void)getAtEventWithQuickLoad:(NSString *)quickLoad {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && quickLoad != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"quickLoad" : quickLoad}};

		[self objectWithModule:@"event" method:@"get" attributes:attributes];
	}
}

- (void)checkAccessCodeAuthenticatedAtEventWithAccessCode:(NSString *)accessCode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && accessCode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"accessCode" : accessCode}};

		[self objectWithModule:@"event" method:@"checkAccessCode" attributes:attributes];
	}
}

- (void)sendSMSAtEventWithTelephone:(NSString *)telephone {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && telephone != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}, @"POST" : @{@"telephone" : telephone}};

		[self objectWithModule:@"event" method:@"sendSMS" attributes:attributes];
	}
}

- (void)searchAuthenticatedAtEventWithQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"query" : query}};

		[self objectWithModule:@"event" method:@"search" attributes:attributes];
	}
}

- (void)emailDnsStatusAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event" method:@"emailDnsStatus" attributes:attributes];
	}
}

- (void)aiRequestAuthenticatedAtEventWithModel:(NSString *)model withPrompt:(NSString *)prompt {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && model != nil && prompt != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"model" : model, @"prompt" : prompt}};

		[self objectWithModule:@"event" method:@"aiRequest" attributes:attributes];
	}
}

- (void)reportAuthenticatedAtEventWithIncludes:(NSString *)includes {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && includes != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"includes" : includes}};

		[self objectWithModule:@"event" method:@"report" attributes:attributes];
	}
}

@end
