#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INContestAPIController : INAPIController

#pragma mark - Contest
- (void)requestAddressAuthenticatedAtEvent;
- (void)informAddressAuthenticatedAtEventWithUrl:(NSString *)url;

@end