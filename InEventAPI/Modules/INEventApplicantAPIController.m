#import "INEventApplicantAPIController.h"

@implementation INEventApplicantAPIController

#pragma mark - EventApplicant

- (void)bindAtEventWithSalutation:(NSString *)salutation withName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withEmail:(NSString *)email withAssistantEmail:(NSString *)assistantEmail withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone atTags:(NSInteger)tagIDs withWaitlist:(NSString *)waitlist {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && salutation != nil && name != nil && username != nil && password != nil && email != nil && assistantEmail != nil && role != nil && company != nil && website != nil && telephone != nil && waitlist != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}, @"POST" : @{@"salutation" : salutation, @"name" : name, @"username" : username, @"password" : password, @"email" : email, @"assistantEmail" : assistantEmail, @"role" : role, @"company" : company, @"website" : website, @"telephone" : telephone, @"tagIDs" : [NSString stringWithFormat:@"%ld", (long)tagIDs], @"waitlist" : waitlist}};

		[self objectWithModule:@"event.applicant" method:@"bind" attributes:attributes];
	}
}

- (void)bindAtEventWithSalutation:(NSString *)salutation withName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone atTags:(NSInteger)tagIDs withWaitlist:(NSString *)waitlist {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && salutation != nil && name != nil && email != nil && password != nil && role != nil && company != nil && website != nil && telephone != nil && waitlist != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}, @"POST" : @{@"salutation" : salutation, @"name" : name, @"email" : email, @"password" : password, @"role" : role, @"company" : company, @"website" : website, @"telephone" : telephone, @"tagIDs" : [NSString stringWithFormat:@"%ld", (long)tagIDs], @"waitlist" : waitlist}};

		[self objectWithModule:@"event.applicant" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"event.applicant" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithFirstName:(NSString *)firstName withLastName:(NSString *)lastName withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && firstName != nil && lastName != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"firstName" : firstName, @"lastName" : lastName, @"email" : email}};

		[self objectWithModule:@"event.applicant" method:@"operate" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"event.applicant" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.applicant" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && paginated != nil && query != nil && sort != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paginated" : paginated, @"query" : query, @"sort" : sort, @"order" : order}};

		[self objectWithModule:@"event.applicant" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.applicant" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.applicant" method:@"get" attributes:attributes];
	}
}

- (void)approveAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.applicant" method:@"approve" attributes:attributes];
	}
}

- (void)rejectAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.applicant" method:@"reject" attributes:attributes];
	}
}

- (void)undoRejectAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.applicant" method:@"undoReject" attributes:attributes];
	}
}

@end
