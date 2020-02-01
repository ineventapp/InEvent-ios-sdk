#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDirectoryAPIController : INAPIController

#pragma mark - Directory
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
@end
