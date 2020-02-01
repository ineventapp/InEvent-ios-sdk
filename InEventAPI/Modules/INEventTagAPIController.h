#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventTagAPIController : INAPIController

#pragma mark - EventTag
- (void)bindAuthenticatedAtEventAtTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtEventAtTag:(NSInteger)tagID;
- (void)findAuthenticatedAtEvent;
- (void)findAtEvent;
@end
