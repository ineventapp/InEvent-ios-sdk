#import "INNewsAPIController.h"

@implementation INNewsAPIController

#pragma mark - News

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withMessage:(NSString *)message {

	if (message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"personID" : [NSString stringWithFormat:@"%d", personID]}, @"POST" : @{@"message" : message}};

		[self JSONObjectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithMessage:(NSString *)message {

	if (message != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"message" : message}};

		[self JSONObjectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withMessage:(NSString *)message {

	if (message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"message" : message}};

		[self JSONObjectWithModule:@"news" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtNews:(NSInteger)newsID {

	NSDictionary *attributes = @{@"GET" : @{@"newsID" : [NSString stringWithFormat:@"%d", newsID]}};

	[self JSONObjectWithModule:@"news" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	if (selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection}};

		[self JSONObjectWithModule:@"news" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"news" method:@"find" attributes:attributes];
}

- (void)getAtNews:(NSInteger)newsID {

	NSDictionary *attributes = @{@"GET" : @{@"newsID" : [NSString stringWithFormat:@"%d", newsID]}};

	[self JSONObjectWithModule:@"news" method:@"get" attributes:attributes];
}

@end