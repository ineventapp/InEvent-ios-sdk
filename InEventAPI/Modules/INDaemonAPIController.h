#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDaemonAPIController : INAPIController

#pragma mark - Daemon
- (void)findAuthenticatedAtEventWithOperation:(NSString *)operation withTarget:(NSString *)target;
- (void)bulkAuthenticatedAtEventAtCompany:(NSInteger)companyID withTarget:(NSString *)target atTarget:(NSInteger)targetID atResource:(NSInteger)resourceID withResourceType:(NSString *)resourceType withResources:(NSString *)resources withExtra:(NSString *)extra;
@end
