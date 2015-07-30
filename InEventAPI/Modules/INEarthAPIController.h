#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEarthAPIController : INAPIController

#pragma mark - Earth
- (void)findWithSearchQuery:(NSString *)searchQuery;
- (void)getAtCity:(NSInteger)cityID;
@end