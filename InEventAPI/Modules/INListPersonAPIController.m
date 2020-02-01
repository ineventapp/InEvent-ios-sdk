#import "INListPersonAPIController.h"

@implementation INListPersonAPIController

#pragma mark - ListPerson

- (void)bindAuthenticatedAtList:(NSInteger)listID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"list.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtList:(NSInteger)listID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"list.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtList:(NSInteger)listID withName:(NSString *)name withUsername:(NSString *)username {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && username != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"name" : name, @"username" : username}};

		[self objectWithModule:@"list.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAtList:(NSInteger)listID withName:(NSString *)name withEmail:(NSString *)email {


	if (name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"name" : name, @"email" : email}};

		[self objectWithModule:@"list.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtList:(NSInteger)listID withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"list.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"list.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtList:(NSInteger)listID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"list.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtList:(NSInteger)listID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"list.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtList:(NSInteger)listID withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && query != nil && sort != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"query" : query, @"sort" : sort, @"order" : order}};

		[self objectWithModule:@"list.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtList:(NSInteger)listID forPerson:(NSInteger)personID withLast:(NSString *)last {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && last != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"last" : last}};

		[self objectWithModule:@"list.person" method:@"get" attributes:attributes];
	}
}

- (void)dismissAllAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"list.person" method:@"dismissAll" attributes:attributes];
	}
}

@end
