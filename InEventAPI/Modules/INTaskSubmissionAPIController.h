#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTaskSubmissionAPIController : INAPIController

#pragma mark - TaskSubmission
- (void)bindAuthenticatedAtEventAtTask:(NSInteger)taskID;
- (void)operateAuthenticatedAtTaskSubmission:(NSInteger)taskSubmissionID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtTaskSubmission:(NSInteger)taskSubmissionID;
- (void)findAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withPending:(NSString *)pending;
- (void)getAuthenticatedAtTaskSubmission:(NSInteger)taskSubmissionID;
@end
