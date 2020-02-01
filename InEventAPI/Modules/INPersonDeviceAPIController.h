#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonDeviceAPIController : INAPIController

#pragma mark - PersonDevice
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withModel:(NSString *)model withDeviceKey:(NSString *)deviceKey;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID withModel:(NSString *)model withDeviceKey:(NSString *)deviceKey;
@end
