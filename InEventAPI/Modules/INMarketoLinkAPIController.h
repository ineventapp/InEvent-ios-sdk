#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMarketoLinkAPIController : INAPIController

#pragma mark - MarketoLink
- (void)bindAuthenticatedAtEventAtList:(NSInteger)listID withLinkId:(NSString *)linkId withMode:(NSString *)mode;
- (void)bindAuthenticatedAtEventWithLinkId:(NSString *)linkId withMode:(NSString *)mode;
- (void)operateAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID;
- (void)createProgramAuthenticatedAtEvent;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID;
- (void)syncAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID;
@end
