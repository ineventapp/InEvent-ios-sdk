#import "INMailingAPIController.h"

@implementation INMailingAPIController

#pragma mark - Mailing

- (void)createAuthenticatedWithFrom:(NSString *)from withSubject:(NSString *)subject withBody:(NSString *)body {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && from != nil && subject != nil && body != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"from" : from, @"subject" : subject, @"body" : body}};

		[self JSONObjectWithModule:@"mailing" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMailingList:(NSInteger)mailingListID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"mailing" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMailingList:(NSInteger)mailingListID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}};

		[self JSONObjectWithModule:@"mailing" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMailingList:(NSInteger)mailingListID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}};

		[self JSONObjectWithModule:@"mailing" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};

		[self JSONObjectWithModule:@"mailing" method:@"find" attributes:attributes];
	}
}

- (void)findSubscribersAuthenticatedAtMailingList:(NSInteger)mailingListID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}};

		[self JSONObjectWithModule:@"mailing" method:@"findSubscribers" attributes:attributes];
	}
}

- (void)findSubscribersAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};

		[self JSONObjectWithModule:@"mailing" method:@"findSubscribers" attributes:attributes];
	}
}

- (void)subscribeAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email withCompany:(NSString *)company {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && email != nil && company != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"name" : name, @"email" : email, @"company" : company}};

		[self JSONObjectWithModule:@"mailing" method:@"subscribe" attributes:attributes];
	}
}

- (void)subscribeAuthenticatedWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"path" : path}};

		[self JSONObjectWithModule:@"mailing" method:@"subscribe" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtMailingList:(NSInteger)mailingListID atMailingSubscriber:(NSInteger)mailingSubscriberID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID], @"mailingSubscriberID" : [NSString stringWithFormat:@"%ld", (long)mailingSubscriberID]}};

		[self JSONObjectWithModule:@"mailing" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtMailingList:(NSInteger)mailingListID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}, @"POST" : @{@"content" : content}};

		[self JSONObjectWithModule:@"mailing" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMailingList:(NSInteger)mailingListID atMailingSubscriber:(NSInteger)mailingSubscriberID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID], @"mailingSubscriberID" : [NSString stringWithFormat:@"%ld", (long)mailingSubscriberID]}};

		[self JSONObjectWithModule:@"mailing" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMailingList:(NSInteger)mailingListID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}, @"POST" : @{@"content" : content}};

		[self JSONObjectWithModule:@"mailing" method:@"dismiss" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtMailingList:(NSInteger)mailingListID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}};

		[self JSONObjectWithModule:@"mailing" method:@"copy" attributes:attributes];
	}
}

- (void)dispatchAuthenticatedAtMailingList:(NSInteger)mailingListID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mailingListID" : [NSString stringWithFormat:@"%ld", (long)mailingListID]}};

		[self JSONObjectWithModule:@"mailing" method:@"dispatch" attributes:attributes];
	}
}

@end