#import "INPersonTagAPIController.h"

@implementation INPersonTagAPIController

#pragma mark - PersonTag

- (void)bindAuthenticatedAtTag:(NSInteger)tagID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"person.tag" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"person.tag" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"person.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTag:(NSInteger)tagID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"person.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"person.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"person.tag" method:@"find" attributes:attributes];
	}
}

@end
