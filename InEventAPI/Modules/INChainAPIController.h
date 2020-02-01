#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INChainAPIController : INAPIController

#pragma mark - Chain
- (void)createAuthenticatedAtEventWithName:(NSString *)name withConstraint:(NSString *)constraint;
- (void)removeAuthenticatedAtChain:(NSInteger)chainID;
- (void)findAuthenticatedAtEvent;
@end
