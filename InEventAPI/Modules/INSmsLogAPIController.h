#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSmsLogAPIController : INAPIController

#pragma mark - SmsLog
- (void)findAuthenticatedAtEventAtListSms:(NSInteger)listSmsID;
@end
