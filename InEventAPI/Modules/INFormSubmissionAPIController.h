#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormSubmissionAPIController : INAPIController

#pragma mark - FormSubmission
- (void)findAuthenticatedAtCompany:(NSInteger)companyID atForm:(NSInteger)formID atSubmission:(NSInteger)submissionID withStatus:(NSString *)status;
- (void)findAuthenticatedAtEventAtForm:(NSInteger)formID atSubmission:(NSInteger)submissionID withSelection:(NSString *)selection withStatus:(NSString *)status;
@end
