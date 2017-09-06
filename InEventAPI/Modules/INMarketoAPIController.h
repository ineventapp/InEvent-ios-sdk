#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMarketoAPIController : INAPIController

#pragma mark - Marketo
- (void)getAuthenticatedAtEvent;
- (void)linkFieldAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atMkField:(NSInteger)mkFieldID;
@end