#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListRestrictionAPIController : INAPIController

#pragma mark - ListRestriction
- (void)createAuthenticatedAtEventWithSource:(NSString *)source atList:(NSInteger)listID atUnmatch:(NSInteger)unmatchID;
- (void)removeAuthenticatedAtEventAtListRestriction:(NSInteger)listRestrictionID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withSource:(NSString *)source;
@end
