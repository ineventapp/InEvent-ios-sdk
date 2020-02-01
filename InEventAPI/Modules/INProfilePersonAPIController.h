#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INProfilePersonAPIController : INAPIController

#pragma mark - ProfilePerson
- (void)bindAuthenticatedAtProfile:(NSInteger)profileID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtProfile:(NSInteger)profileID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtProfile:(NSInteger)profileID;
@end
