#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHiveAPIController : INAPIController

#pragma mark - Hive
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
@end
