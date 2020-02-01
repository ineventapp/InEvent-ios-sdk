#import "INMeetingWishlistAPIController.h"

@implementation INMeetingWishlistAPIController

#pragma mark - MeetingWishlist

- (void)bindAuthenticatedAtEventAtTarget:(NSInteger)targetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID]}};

		[self objectWithModule:@"meeting.wishlist" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtTarget:(NSInteger)targetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID]}};

		[self objectWithModule:@"meeting.wishlist" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"meeting.wishlist" method:@"find" attributes:attributes];
	}
}

@end
