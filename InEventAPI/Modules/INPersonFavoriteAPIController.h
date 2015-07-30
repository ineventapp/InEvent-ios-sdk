#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonFavoriteAPIController : INAPIController

#pragma mark - PersonFavorite
- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
@end