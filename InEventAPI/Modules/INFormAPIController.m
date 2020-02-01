#import "INFormAPIController.h"

@implementation INFormAPIController

#pragma mark - Form

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withTitle:(NSString *)title withType:(NSString *)type withDescription:(NSString *)description {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && title != nil && type != nil && description != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"title" : title, @"type" : type, @"description" : description}};

		[self objectWithModule:@"form" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil && description != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"title" : title, @"description" : description}};

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

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withComplementRegistration:(NSString *)complementRegistration {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && complementRegistration != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"complementRegistration" : complementRegistration}};

		[self objectWithModule:@"form" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithComplementRegistration:(NSString *)complementRegistration {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && complementRegistration != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"complementRegistration" : complementRegistration}};

		[self objectWithModule:@"form" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"form" method:@"get" attributes:attributes];
	}
}

- (void)respondRegistrationAuthenticatedAtEventAtTicketPerson:(NSInteger)ticketPersonID withTicketToken:(NSString *)ticketToken withFeedbackContent:(NSString *)feedbackContent withEmail:(NSString *)email withUsername:(NSString *)username withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && ticketToken != nil && feedbackContent != nil && email != nil && username != nil && firstName != nil && lastName != nil && password != nil && role != nil && company != nil && guestContent != nil && activities != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"ticketPersonID" : [NSString stringWithFormat:@"%ld", (long)ticketPersonID]}, @"POST" : @{@"ticketToken" : ticketToken, @"feedbackContent" : feedbackContent, @"email" : email, @"username" : username, @"firstName" : firstName, @"lastName" : lastName, @"password" : password, @"role" : role, @"company" : company, @"guestContent" : guestContent, @"activities" : activities}};

		[self objectWithModule:@"form" method:@"respondRegistration" attributes:attributes];
	}
}

- (void)respondRegistrationAuthenticatedAtEventWithFeedbackContent:(NSString *)feedbackContent withInvite:(NSString *)invite withEmail:(NSString *)email withUsername:(NSString *)username withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withRsvp:(NSString *)rsvp withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && feedbackContent != nil && invite != nil && email != nil && username != nil && firstName != nil && lastName != nil && password != nil && role != nil && company != nil && rsvp != nil && guestContent != nil && activities != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"feedbackContent" : feedbackContent, @"invite" : invite, @"email" : email, @"username" : username, @"firstName" : firstName, @"lastName" : lastName, @"password" : password, @"role" : role, @"company" : company, @"rsvp" : rsvp, @"guestContent" : guestContent, @"activities" : activities}};

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
