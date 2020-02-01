#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormListAPIController : INAPIController

#pragma mark - FormList
- (void)bindAuthenticatedAtList:(NSInteger)listID atForm:(NSInteger)formID;
- (void)dismissAuthenticatedAtList:(NSInteger)listID atForm:(NSInteger)formID;
- (void)findAuthenticatedAtForm:(NSInteger)formID;
@end
