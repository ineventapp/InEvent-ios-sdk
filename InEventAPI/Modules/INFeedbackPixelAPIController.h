#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFeedbackPixelAPIController : INAPIController

#pragma mark - FeedbackPixel
- (void)createAuthenticatedAtFeedback:(NSInteger)feedbackID withText:(NSString *)text;
- (void)removeAuthenticatedAtFeedbackOption:(NSInteger)feedbackOptionID;
- (void)findAuthenticatedAtFeedback:(NSInteger)feedbackID;
@end