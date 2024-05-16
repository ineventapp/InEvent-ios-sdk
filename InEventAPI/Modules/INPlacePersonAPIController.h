#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPlacePersonAPIController : INAPIController

#pragma mark - PlacePerson
- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID atPlace:(NSInteger)placeID;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
