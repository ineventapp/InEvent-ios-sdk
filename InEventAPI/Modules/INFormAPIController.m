#import "INFormAPIController.h"

@implementation INFormAPIController

#pragma mark - Form

- (void)createAuthenticatedAtCompany:(NSInteger)companyID atSyncList:(NSInteger)syncListID withTitle:(NSString *)title withType:(NSString *)type withDescription:(NSString *)description {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && title != nil && type != nil && description != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"syncListID" : [NSString stringWithFormat:@"%ld", (long)syncListID]}, @"POST" : @{@"title" : title, @"type" : type, @"description" : description}};

		[self objectWithModule:@"form" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventAtSyncList:(NSInteger)syncListID withTitle:(NSString *)title withDescription:(NSString *)description withComplementRegistration:(NSString *)complementRegistration {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil && description != nil && complementRegistration != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"syncListID" : [NSString stringWithFormat:@"%ld", (long)syncListID]}, @"POST" : @{@"title" : title, @"description" : description, @"complementRegistration" : complementRegistration}};

		[self objectWithModule:@"form" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtForm:(NSInteger)formID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"form" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"form" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withComplementRegistration:(NSString *)complementRegistration withListing:(NSString *)listing withStatus:(NSString *)status {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && complementRegistration != nil && listing != nil && status != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"complementRegistration" : complementRegistration, @"listing" : listing, @"status" : status}};

		[self objectWithModule:@"form" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withComplementRegistration:(NSString *)complementRegistration withListing:(NSString *)listing withStatus:(NSString *)status {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && complementRegistration != nil && listing != nil && status != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"complementRegistration" : complementRegistration, @"listing" : listing, @"status" : status}};

		[self objectWithModule:@"form" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtForm:(NSInteger)formID withListing:(NSString *)listing {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && listing != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"listing" : listing}};

		[self objectWithModule:@"form" method:@"get" attributes:attributes];
	}
}

- (void)respondRegistrationAuthenticatedAtEventWithLogin:(NSString *)login atTicketPerson:(NSInteger)ticketPersonID withTicketToken:(NSString *)ticketToken withInvite:(NSString *)invite withFeedbackContent:(NSString *)feedbackContent withEmail:(NSString *)email withAssistantEmail:(NSString *)assistantEmail withUsername:(NSString *)username withSalutation:(NSString *)salutation withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone withImage:(NSString *)image withPrivate:(NSString *)private withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities atTags:(NSInteger)tagIDs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && login != nil && ticketToken != nil && invite != nil && feedbackContent != nil && email != nil && assistantEmail != nil && username != nil && salutation != nil && firstName != nil && lastName != nil && password != nil && role != nil && company != nil && website != nil && telephone != nil && image != nil && private != nil && guestContent != nil && activities != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"login" : login, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}, @"POST" : @{@"ticketToken" : ticketToken, @"invite" : invite, @"feedbackContent" : feedbackContent, @"email" : email, @"assistantEmail" : assistantEmail, @"username" : username, @"salutation" : salutation, @"firstName" : firstName, @"lastName" : lastName, @"password" : password, @"role" : role, @"company" : company, @"website" : website, @"telephone" : telephone, @"image" : image, @"private" : private, @"guestContent" : guestContent, @"activities" : activities, @"tagIDs" : [NSString stringWithFormat:@"%ld", (long)tagIDs]}};

		[self objectWithModule:@"form" method:@"respondRegistration" attributes:attributes];
	}
}

- (void)respondRegistrationAuthenticatedAtEventWithLogin:(NSString *)login withFeedbackContent:(NSString *)feedbackContent withInvite:(NSString *)invite withEmail:(NSString *)email withAssistantEmail:(NSString *)assistantEmail withUsername:(NSString *)username withSalutation:(NSString *)salutation withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone withImage:(NSString *)image withRsvp:(NSString *)rsvp withPrivate:(NSString *)private withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities atTags:(NSInteger)tagIDs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && login != nil && eventID != nil && feedbackContent != nil && invite != nil && email != nil && assistantEmail != nil && username != nil && salutation != nil && firstName != nil && lastName != nil && password != nil && role != nil && company != nil && website != nil && telephone != nil && image != nil && rsvp != nil && private != nil && guestContent != nil && activities != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"login" : login, @"eventID" : eventID}, @"POST" : @{@"feedbackContent" : feedbackContent, @"invite" : invite, @"email" : email, @"assistantEmail" : assistantEmail, @"username" : username, @"salutation" : salutation, @"firstName" : firstName, @"lastName" : lastName, @"password" : password, @"role" : role, @"company" : company, @"website" : website, @"telephone" : telephone, @"image" : image, @"rsvp" : rsvp, @"private" : private, @"guestContent" : guestContent, @"activities" : activities, @"tagIDs" : [NSString stringWithFormat:@"%ld", (long)tagIDs]}};

		[self objectWithModule:@"form" method:@"respondRegistration" attributes:attributes];
	}
}

- (void)respondCustomAuthenticatedAtEventAtForm:(NSInteger)formID forPerson:(NSInteger)personID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"form" method:@"respondCustom" attributes:attributes];
	}
}

- (void)respondCustomAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"form" method:@"respondCustom" attributes:attributes];
	}
}

- (void)respondCustomAtEventWithInvite:(NSString *)invite withContent:(NSString *)content {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && invite != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"invite" : invite}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"form" method:@"respondCustom" attributes:attributes];
	}
}

- (void)respondCustomAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && content != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content, @"password" : password}};

		[self objectWithModule:@"form" method:@"respondCustom" attributes:attributes];
	}
}

- (void)respondMeetingAuthenticatedAtEventAtForm:(NSInteger)formID forPerson:(NSInteger)personID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"form" method:@"respondMeeting" attributes:attributes];
	}
}

- (void)respondMeetingAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"form" method:@"respondMeeting" attributes:attributes];
	}
}

- (void)respondMeetingAtEventWithInvite:(NSString *)invite withContent:(NSString *)content {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && invite != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"invite" : invite}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"form" method:@"respondMeeting" attributes:attributes];
	}
}

- (void)respondMeetingAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && content != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"content" : content, @"password" : password}};

		[self objectWithModule:@"form" method:@"respondMeeting" attributes:attributes];
	}
}

@end
