#import "INTrackingAPIController.h"

@implementation INTrackingAPIController

#pragma mark - Tracking

- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && target != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID], @"date" : date}};

		[self JSONObjectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)createAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil && target != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}, @"POST" : @{@"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID], @"date" : date}};

		[self JSONObjectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"content" : content}};

		[self JSONObjectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)createWithContent:(NSString *)content {


	if (content != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"content" : content}};

		[self JSONObjectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self JSONObjectWithModule:@"tracking" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithRoot:(NSString *)root withModule:(NSString *)module {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && root != nil && module != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"root" : root, @"module" : module}};

		[self JSONObjectWithModule:@"tracking" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTracking:(NSInteger)trackingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"trackingID" : [NSString stringWithFormat:@"%ld", (long)trackingID]}};

		[self JSONObjectWithModule:@"tracking" method:@"get" attributes:attributes];
	}
}

@end