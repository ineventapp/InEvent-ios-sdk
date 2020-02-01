#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INNoteAPIController : INAPIController

#pragma mark - Note
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withText:(NSString *)text;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
@end
