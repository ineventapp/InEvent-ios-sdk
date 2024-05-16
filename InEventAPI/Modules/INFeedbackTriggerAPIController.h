#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackTriggerAPIController : INAPIController

#pragma mark - FeedbackTrigger
- (void)editAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atList:(NSInteger)listID withOption:(NSString *)option withSource:(NSString *)source;
- (void)findAuthenticatedAtEventWithSource:(NSString *)source;
@end
