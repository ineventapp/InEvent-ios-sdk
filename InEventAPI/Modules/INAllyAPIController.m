#import "INAllyAPIController.h"

@implementation INAllyAPIController

#pragma mark - Ally

- (void)createAuthenticatedForAlly:(NSInteger)allyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"allyID" : [NSString stringWithFormat:@"%ld", (long)allyID]}};

		[self objectWithModule:@"ally" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedForAlly:(NSInteger)allyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"allyID" : [NSString stringWithFormat:@"%ld", (long)allyID]}};

		[self objectWithModule:@"ally" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedWithSelection:(NSString *)selection withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"selection" : selection, @"order" : order}};

		[self objectWithModule:@"ally" method:@"find" attributes:attributes];
	}
}

- (void)syncAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"ally" method:@"sync" attributes:attributes];
	}
}

@end
