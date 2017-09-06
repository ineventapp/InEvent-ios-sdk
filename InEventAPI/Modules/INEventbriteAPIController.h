#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventbriteAPIController : INAPIController

#pragma mark - Eventbrite
- (void)getAuthenticatedAtEvent;
- (void)linkFieldAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atEbField:(NSInteger)ebFieldID;
@end