#import "INReportTemplateAPIController.h"

@implementation INReportTemplateAPIController

#pragma mark - ReportTemplate

- (void)createAuthenticatedAtReport:(NSInteger)reportID atTemplate:(NSInteger)templateID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}, @"POST" : @{@"templateID" : [NSString stringWithFormat:@"%ld", (long)templateID]}};

		[self objectWithModule:@"report.template" method:@"create" attributes:attributes];
	}
}

@end
