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

- (void)bindAuthenticatedAtList:(NSInteger)listID withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"list.person" method:@"bind" attributes:attributes];
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

- (void)findAuthenticatedAtList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"list.person" method:@"find" attributes:attributes];
	}
}

@end