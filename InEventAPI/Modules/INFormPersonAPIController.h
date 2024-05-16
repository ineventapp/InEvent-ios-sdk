#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormPersonAPIController : INAPIController

#pragma mark - FormPerson
- (void)bindAuthenticatedAtForm:(NSInteger)formID forPerson:(NSInteger)personID withRole:(NSString *)role;
- (void)dismissAuthenticatedAtForm:(NSInteger)formID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtForm:(NSInteger)formID;
@end
