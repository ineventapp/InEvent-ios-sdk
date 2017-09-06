#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPlaceAPIController : INAPIController

#pragma mark - Place
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)removeAuthenticatedAtPlace:(NSInteger)placeID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtPlace:(NSInteger)placeID;
@end