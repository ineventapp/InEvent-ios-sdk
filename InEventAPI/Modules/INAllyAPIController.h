#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAllyAPIController : INAPIController

#pragma mark - Ally
- (void)createAuthenticatedForAlly:(NSInteger)allyID;
- (void)removeAuthenticatedForAlly:(NSInteger)allyID;
- (void)findAuthenticatedWithSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)syncAuthenticatedAtEventWithContent:(NSString *)content;
@end