#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListPersonAPIController : INAPIController

#pragma mark - ListPerson
- (void)bindAuthenticatedAtList:(NSInteger)listID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtList:(NSInteger)listID withContent:(NSString *)content;
- (void)bindAuthenticatedAtList:(NSInteger)listID withPath:(NSString *)path;
- (void)dismissAuthenticatedAtList:(NSInteger)listID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtList:(NSInteger)listID withContent:(NSString *)content;
- (void)findAuthenticatedAtList:(NSInteger)listID;
@end