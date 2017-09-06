#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMaterialTagAPIController : INAPIController

#pragma mark - MaterialTag
- (void)bindAuthenticatedAtMaterial:(NSInteger)materialID atTag:(NSInteger)tagID;
- (void)dismissAuthenticatedAtMaterial:(NSInteger)materialID atTag:(NSInteger)tagID;
- (void)findAtMaterial:(NSInteger)materialID;
@end