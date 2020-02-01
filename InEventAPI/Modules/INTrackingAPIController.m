#import "INTrackingAPIController.h"

@implementation INTrackingAPIController

#pragma mark - Tracking

- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID], @"date" : date}};

		[self objectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"tracking" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withSelection:(NSString *)selection withRoot:(NSString *)root withModule:(NSString *)module {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && root != nil && module != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"selection" : selection, @"root" : root, @"module" : module}};

		[self objectWithModule:@"tracking" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTracking:(NSInteger)trackingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"trackingID" : [NSString stringWithFormat:@"%ld", (long)trackingID]}};

		[self objectWithModule:@"tracking" method:@"get" attributes:attributes];
	}
}

@end
