#import "INFormSubmissionAPIController.h"

@implementation INFormSubmissionAPIController

#pragma mark - FormSubmission

- (void)findAuthenticatedAtCompany:(NSInteger)companyID atForm:(NSInteger)formID atSubmission:(NSInteger)submissionID withStatus:(NSString *)status {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && status != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"submissionID" : [NSString stringWithFormat:@"%ld", (long)submissionID], @"status" : status}};

		[self objectWithModule:@"form.submission" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtForm:(NSInteger)formID atSubmission:(NSInteger)submissionID withSelection:(NSString *)selection withStatus:(NSString *)status {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && status != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID], @"submissionID" : [NSString stringWithFormat:@"%ld", (long)submissionID], @"selection" : selection, @"status" : status}};

		[self objectWithModule:@"form.submission" method:@"find" attributes:attributes];
	}
}

@end
