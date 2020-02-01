#import "INReportTagAPIController.h"

@implementation INReportTagAPIController

#pragma mark - ReportTag

- (void)bindAuthenticatedAtTag:(NSInteger)tagID atReport:(NSInteger)reportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}};

		[self objectWithModule:@"report.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTag:(NSInteger)tagID atReport:(NSInteger)reportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}};

		[self objectWithModule:@"report.tag" method:@"dismiss" attributes:attributes];
	}
}

@end
