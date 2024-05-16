#import "INEventPersonAPIController.h"

@implementation INEventPersonAPIController

#pragma mark - EventPerson

- (void)bindAuthenticatedAtEventWithName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withAccessCode:(NSString *)accessCode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && username != nil && password != nil && role != nil && company != nil && accessCode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"username" : username, @"password" : password, @"role" : role, @"company" : company, @"accessCode" : accessCode}};

		[self objectWithModule:@"event.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAtEventWithInvite:(NSString *)invite withEmail:(NSString *)email withName:(NSString *)name withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withRsvp:(NSString *)rsvp {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && invite != nil && email != nil && name != nil && password != nil && role != nil && company != nil && rsvp != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}, @"POST" : @{@"invite" : invite, @"email" : email, @"name" : name, @"password" : password, @"role" : role, @"company" : company, @"rsvp" : rsvp}};

		[self objectWithModule:@"event.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"event.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithAccessCode:(NSString *)accessCode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && accessCode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"accessCode" : accessCode}};

		[self objectWithModule:@"event.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.person" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.person" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventForPerson:(NSInteger)personID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"event.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"content" : content}};

		[self objectWithModule:@"event.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withMatch:(NSString *)match withFullProfile:(NSString *)fullProfile {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && order != nil && orderDirection != nil && query != nil && queryKey != nil && match != nil && fullProfile != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"order" : order, @"orderDirection" : orderDirection, @"query" : query, @"queryKey" : queryKey, @"match" : match, @"fullProfile" : fullProfile}};

		[self objectWithModule:@"event.person" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query}};

		[self objectWithModule:@"event.person" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTemplates:(NSString *)templates withSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && templates != nil && selection != nil && order != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"templates" : templates, @"selection" : selection, @"order" : order, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"event.person" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withEvents:(NSString *)events withSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && events != nil && selection != nil && order != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"events" : events, @"selection" : selection, @"order" : order, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"event.person" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTags:(NSString *)tags withSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && tags != nil && selection != nil && order != nil && orderDirection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"tags" : tags, @"selection" : selection, @"order" : order, @"orderDirection" : orderDirection}};

		[self objectWithModule:@"event.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID withValue:(NSString *)value withFeedbackMode:(NSString *)feedbackMode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && value != nil && feedbackMode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID], @"value" : value, @"feedbackMode" : feedbackMode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithEmail:(NSString *)email withFeedbackMode:(NSString *)feedbackMode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && email != nil && feedbackMode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"email" : email, @"feedbackMode" : feedbackMode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID withFeedbackMode:(NSString *)feedbackMode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && feedbackMode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"feedbackMode" : feedbackMode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithQrCode:(NSString *)qrCode withFeedbackMode:(NSString *)feedbackMode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && qrCode != nil && feedbackMode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"qrCode" : qrCode, @"feedbackMode" : feedbackMode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithQrCode:(NSString *)qrCode withMode:(NSString *)mode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && qrCode != nil && mode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"qrCode" : qrCode, @"mode" : mode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithNfc:(NSString *)nfc withFeedbackMode:(NSString *)feedbackMode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && nfc != nil && feedbackMode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"nfc" : nfc, @"feedbackMode" : feedbackMode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithFeedbackMode:(NSString *)feedbackMode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && feedbackMode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"feedbackMode" : feedbackMode}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedForPerson:(NSInteger)personID atCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"event.person" method:@"get" attributes:attributes];
	}
}

- (void)getLastEntryAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"event.person" method:@"getLastEntry" attributes:attributes];
	}
}

- (void)rememberAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.person" method:@"remember" attributes:attributes];
	}
}

- (void)qrCodeAuthenticatedAtEventWithQuery:(NSString *)query withMatch:(NSString *)match {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil && match != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query, @"match" : match}};

		[self objectWithModule:@"event.person" method:@"qrCode" attributes:attributes];
	}
}

- (void)qrCodeAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.person" method:@"qrCode" attributes:attributes];
	}
}

- (void)printAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.person" method:@"print" attributes:attributes];
	}
}

- (void)printedAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.person" method:@"printed" attributes:attributes];
	}
}

- (void)printedListAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.person" method:@"printedList" attributes:attributes];
	}
}

- (void)verifyEmailAtEventWithEmail:(NSString *)email withVerifyEmailToken:(NSString *)verifyEmailToken {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && email != nil && verifyEmailToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"email" : email}, @"POST" : @{@"verifyEmailToken" : verifyEmailToken}};

		[self objectWithModule:@"event.person" method:@"verifyEmail" attributes:attributes];
	}
}

- (void)requestMagicLinkAtEventWithEmail:(NSString *)email withVerifyEmailToken:(NSString *)verifyEmailToken {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && email != nil && verifyEmailToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"email" : email}, @"POST" : @{@"verifyEmailToken" : verifyEmailToken}};

		[self objectWithModule:@"event.person" method:@"requestMagicLink" attributes:attributes];
	}
}

- (void)requestMagicLinkAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.person" method:@"requestMagicLink" attributes:attributes];
	}
}

- (void)regenerateQrCodeAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.person" method:@"regenerateQrCode" attributes:attributes];
	}
}

- (void)voucherAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.person" method:@"voucher" attributes:attributes];
	}
}

@end
