#import "INListAPIController.h"

@implementation INListAPIController

#pragma mark - List

- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && color != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"color" : color}};

		[self objectWithModule:@"list" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && color != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"color" : color}};

		[self objectWithModule:@"list" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtList:(NSInteger)listID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"list" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"selection" : selection}};

		[self objectWithModule:@"list" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection}};

		[self objectWithModule:@"list" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list" method:@"get" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtEventAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list" method:@"copy" attributes:attributes];
	}
}

- (void)importAuthenticatedAtEventAtSource:(NSInteger)sourceID atTarget:(NSInteger)targetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sourceID" : [NSString stringWithFormat:@"%ld", (long)sourceID], @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID]}};

		[self objectWithModule:@"list" method:@"import" attributes:attributes];
	}
}

@end
