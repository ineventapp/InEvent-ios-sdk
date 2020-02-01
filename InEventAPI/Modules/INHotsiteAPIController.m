#import "INHotsiteAPIController.h"

@implementation INHotsiteAPIController

#pragma mark - Hotsite

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && section != nil && position != nil && name != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"section" : section}, @"POST" : @{@"position" : position, @"name" : name, @"text" : text}};

		[self objectWithModule:@"hotsite" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && section != nil && position != nil && name != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"section" : section}, @"POST" : @{@"position" : position, @"name" : name, @"text" : text}};

		[self objectWithModule:@"hotsite" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && section != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"section" : section, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && section != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"section" : section, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && section != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"section" : section}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithSection:(NSString *)section withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && section != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"section" : section}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"hotsite" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventWithSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"hotsite" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"hotsite" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithSection:(NSString *)section {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && section != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"section" : section}};

		[self objectWithModule:@"hotsite" method:@"get" attributes:attributes];
	}
}

- (void)getConfigAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"hotsite" method:@"getConfig" attributes:attributes];
	}
}

- (void)getConfigAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"hotsite" method:@"getConfig" attributes:attributes];
	}
}

- (void)setConfigAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"setConfig" attributes:attributes];
	}
}

- (void)setConfigAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite" method:@"setConfig" attributes:attributes];
	}
}

@end
