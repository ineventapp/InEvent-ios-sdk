#import "INReportEventAPIController.h"

@implementation INReportEventAPIController

#pragma mark - ReportEvent

- (void)createAuthenticatedAtEventAtReport:(NSInteger)reportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}, @"POST" : @{@"eventID" : eventID}};

		[self objectWithModule:@"report.event" method:@"create" attributes:attributes];
	}
}

@end
