#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonTagAPIController : INAPIController

#pragma mark - PersonTag
- (void)bindAuthenticatedAtTag:(NSInteger)tagID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtTag:(NSInteger)tagID;
- (void)bindAuthenticatedWithContent:(NSString *)content;
- (void)dismissAuthenticatedAtTag:(NSInteger)tagID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtTag:(NSInteger)tagID;
- (void)findAuthenticatedAtEvent;
@end
