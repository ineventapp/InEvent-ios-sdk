#import "INHotsiteAPIController.h"

@implementation INHotsiteAPIController

#pragma mark - Hotsite

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && section != nil && position != nil && name != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page, @"section" : section}, @"POST" : @{@"position" : position, @"name" : name, @"text" : text}};

		[self objectWithModule:@"hotsite" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && section != nil && position != nil && name != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"section" : section}, @"POST" : @{@"position" : position, @"name" : name, @"text" : text}};

		[self objectWithModule:@"hotsite" method:@"create" attributes:attributes];
	}
}

- (void)createPageAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"createPage" attributes:attributes];
	}
}

- (void)createPageAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"createPage" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && section != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page, @"section" : section, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && section != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"section" : section, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && section != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page, @"section" : section}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && section != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"section" : section}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page, @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"remove" attributes:attributes];
	}
}

- (void)removePageAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"removePage" attributes:attributes];
	}
}

- (void)removePageAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"removePage" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page, @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"get" attributes:attributes];
	}
}

- (void)getPagesAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"hotsite" method:@"getPages" attributes:attributes];
	}
}

- (void)getPagesAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"hotsite" method:@"getPages" attributes:attributes];
	}
}

- (void)getConfigAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"getConfig" attributes:attributes];
	}
}

- (void)getConfigAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"hotsite" method:@"getConfig" attributes:attributes];
	}
}

- (void)setConfigAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"setConfig" attributes:attributes];
	}
}

- (void)setConfigAuthenticatedAtEventWithPage:(NSString *)page withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"setConfig" attributes:attributes];
	}
}

- (void)rebuildAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"hotsite" method:@"rebuild" attributes:attributes];
	}
}

@end
