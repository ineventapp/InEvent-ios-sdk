#import "INLicenseAPIController.h"

@implementation INLicenseAPIController

#pragma mark - License

- (void)createAuthenticatedWithUsername:(NSString *)username withCourse:(NSString *)course withLocation:(NSString *)location {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && username != nil && course != nil && location != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"username" : username, @"course" : course, @"location" : location}};

		[self objectWithModule:@"license" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedWithNumber:(NSString *)number withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && number != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"number" : number, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"license" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedWithNumber:(NSString *)number {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && number != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"number" : number}};

		[self objectWithModule:@"license" method:@"remove" attributes:attributes];
	}
}

- (void)findWithQuery:(NSString *)query {


	if (query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"query" : query}};

		[self objectWithModule:@"license" method:@"find" attributes:attributes];
	}
}

- (void)getWithNumber:(NSString *)number {


	if (number != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"number" : number}};

		[self objectWithModule:@"license" method:@"get" attributes:attributes];
	}
}

- (void)requestWithNumber:(NSString *)number withLeadEmail:(NSString *)leadEmail {


	if (number != nil && leadEmail != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"number" : number}, @"POST" : @{@"leadEmail" : leadEmail}};

		[self objectWithModule:@"license" method:@"request" attributes:attributes];
	}
}

@end
