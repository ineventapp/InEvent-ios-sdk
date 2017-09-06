#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDaemonAPIController : INAPIController

#pragma mark - Daemon
- (void)findAtEventWithOperation:(NSString *)operation withTarget:(NSString *)target;
@end