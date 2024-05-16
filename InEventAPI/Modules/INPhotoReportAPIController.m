#import "INPhotoReportAPIController.h"

@implementation INPhotoReportAPIController

#pragma mark - PhotoReport

- (void)bindAuthenticatedAtEventAtPhoto:(NSInteger)photoID withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID]}, @"POST" : @{@"message" : message}};

		[self objectWithModule:@"photo.report" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtPhotoReport:(NSInteger)photoReportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoReportID" : [NSString stringWithFormat:@"%ld", (long)photoReportID]}};

		[self objectWithModule:@"photo.report" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"photo.report" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtPhotoReport:(NSInteger)photoReportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoReportID" : [NSString stringWithFormat:@"%ld", (long)photoReportID]}};

		[self objectWithModule:@"photo.report" method:@"get" attributes:attributes];
	}
}

@end
