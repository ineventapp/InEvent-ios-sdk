#import "INTrackingAPIController.h"

@implementation INTrackingAPIController

#pragma mark - Tracking

- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date {

	if (target != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"target" : target, @"targetID" : [NSString stringWithFormat:@"%d", targetID], @"date" : date}};

		[self JSONObjectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)createAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date {

	if (target != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"target" : target, @"targetID" : [NSString stringWithFormat:@"%d", targetID], @"date" : date}};

		[self JSONObjectWithModule:@"tracking" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"tracking" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtTracking:(NSInteger)trackingID {

	NSDictionary *attributes = @{@"GET" : @{@"trackingID" : [NSString stringWithFormat:@"%d", trackingID]}};

	[self JSONObjectWithModule:@"tracking" method:@"get" attributes:attributes];
}

@end