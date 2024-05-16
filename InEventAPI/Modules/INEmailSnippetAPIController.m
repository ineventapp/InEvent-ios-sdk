#import "INEmailSnippetAPIController.h"

@implementation INEmailSnippetAPIController

#pragma mark - EmailSnippet

- (void)createAuthenticatedAtEventWithName:(NSString *)name withIcon:(NSString *)icon withHtml:(NSString *)html {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && icon != nil && html != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"icon" : icon, @"html" : html}};

		[self objectWithModule:@"email.snippet" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEmailSnippet:(NSInteger)emailSnippetID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"emailSnippetID" : [NSString stringWithFormat:@"%ld", (long)emailSnippetID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"email.snippet" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEmailSnippet:(NSInteger)emailSnippetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"emailSnippetID" : [NSString stringWithFormat:@"%ld", (long)emailSnippetID]}};

		[self objectWithModule:@"email.snippet" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"email.snippet" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEmailSnippet:(NSInteger)emailSnippetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"emailSnippetID" : [NSString stringWithFormat:@"%ld", (long)emailSnippetID]}};

		[self objectWithModule:@"email.snippet" method:@"get" attributes:attributes];
	}
}

@end
