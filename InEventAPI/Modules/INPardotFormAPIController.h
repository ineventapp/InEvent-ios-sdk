#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPardotFormAPIController : INAPIController

#pragma mark - PardotForm
- (void)bindAuthenticatedAtEventWithPardotFormId:(NSString *)pardotFormId;
- (void)dismissAuthenticatedAtPardotForm:(NSInteger)pardotFormID;
- (void)findAuthenticatedAtEvent;
- (void)listProspectsAuthenticatedAtPardotForm:(NSInteger)pardotFormID;
@end
