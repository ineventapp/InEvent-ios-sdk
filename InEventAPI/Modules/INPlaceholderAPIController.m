#import "INPlaceholderAPIController.h"

@implementation INPlaceholderAPIController

#pragma mark - Placeholder

- (void)createAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"type" : type, @"value" : value}};

		[self objectWithModule:@"placeholder" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtPlaceholder:(NSInteger)placeholderID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"placeholderID" : [NSString stringWithFormat:@"%ld", (long)placeholderID]}};

		[self objectWithModule:@"placeholder" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"placeholder" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"placeholder" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtPlaceholder:(NSInteger)placeholderID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"placeholderID" : [NSString stringWithFormat:@"%ld", (long)placeholderID]}};

		[self objectWithModule:@"placeholder" method:@"get" attributes:attributes];
	}
}

@end