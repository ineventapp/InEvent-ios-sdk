#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaygovFieldAPIController : INAPIController

#pragma mark - PaygovField
- (void)bindAuthenticatedAtEventAtPayGovOffice:(NSInteger)payGovOfficeID withPercent:(NSString *)percent;
- (void)operateAuthenticatedAtPaygovField:(NSInteger)paygovFieldID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtPaygovField:(NSInteger)paygovFieldID;
- (void)findAuthenticatedAtEvent;
@end
