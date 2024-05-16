#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAiAPIController : INAPIController

#pragma mark - Ai
- (void)promptAuthenticatedAtEventWithModel:(NSString *)model withPrompt:(NSString *)prompt;
@end
