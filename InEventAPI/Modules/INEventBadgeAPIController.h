#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventBadgeAPIController : INAPIController

#pragma mark - EventBadge
- (void)bindAuthenticatedAtEventAtList:(NSInteger)listID withName:(NSString *)name withPrinterType:(NSString *)printerType withPrinterModel:(NSString *)printerModel withLabelType:(NSString *)labelType withWidth:(NSString *)width withHeight:(NSString *)height;
- (void)operateAuthenticatedAtEventBadge:(NSInteger)eventBadgeID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtEventBadge:(NSInteger)eventBadgeID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtEventBadge:(NSInteger)eventBadgeID;
@end
