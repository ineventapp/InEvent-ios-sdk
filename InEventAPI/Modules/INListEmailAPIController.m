#import "INListEmailAPIController.h"

@implementation INListEmailAPIController

#pragma mark - ListEmail

- (void)createAuthenticatedAtList:(NSInteger)listID withSubject:(NSString *)subject withHtml:(NSString *)html {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && subject != nil && html != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"subject" : subject, @"html" : html}};

		[self objectWithModule:@"list.email" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithSubject:(NSString *)subject withHtml:(NSString *)html withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && subject != nil && html != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"subject" : subject, @"html" : html, @"selection" : selection}};

		[self objectWithModule:@"list.email" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"list.email" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtListEmail:(NSInteger)listEmailID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"list.email" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list.email" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"list.email" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"get" attributes:attributes];
	}
}

- (void)sendAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"send" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtListEmail:(NSInteger)listEmailID atList:(NSInteger)listID withSelection:(NSString *)selection withSubject:(NSString *)subject {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && subject != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID], @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"selection" : selection}, @"POST" : @{@"subject" : subject}};

		[self objectWithModule:@"list.email" method:@"copy" attributes:attributes];
	}
}

- (void)previewAuthenticatedAtListEmail:(NSInteger)listEmailID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"list.email" method:@"preview" attributes:attributes];
	}
}

- (void)statsAuthenticatedAtListEmail:(NSInteger)listEmailID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listEmailID" : [NSString stringWithFormat:@"%ld", (long)listEmailID]}};

		[self objectWithModule:@"list.email" method:@"stats" attributes:attributes];
	}
}

@end
