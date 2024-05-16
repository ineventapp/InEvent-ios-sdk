#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackSubmissionAPIController : INAPIController

#pragma mark - FeedbackSubmission
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtForm:(NSInteger)formID withPaginated:(NSString *)paginated;
- (void)operateAuthenticatedAtCompany:(NSInteger)companyID atForm:(NSInteger)formID atFeedbackSubmission:(NSInteger)feedbackSubmissionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtFeedbackSubmission:(NSInteger)feedbackSubmissionID;
- (void)processActivityAtEventAtFeedbackSubmission:(NSInteger)feedbackSubmissionID forPerson:(NSInteger)personID withName:(NSString *)name withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
@end
