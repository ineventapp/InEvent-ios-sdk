#import "INEventTagAPIController.h"

@implementation INEventTagAPIController

#pragma mark - EventTag

- (void)bindAuthenticatedAtEventAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"event.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"event.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.tag" method:@"find" attributes:attributes];
	}
}

- (void)findAtEvent {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self objectWithModule:@"event.tag" method:@"find" attributes:attributes];
	}
}

@end
