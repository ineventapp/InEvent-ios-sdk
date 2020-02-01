#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventBlacklistAPIController : INAPIController

#pragma mark - EventBlacklist
- (void)removeAuthenticatedAtEventBlacklist:(NSInteger)eventBlacklistID;
- (void)findAuthenticatedAtEventWithQuery:(NSString *)query;
@end
