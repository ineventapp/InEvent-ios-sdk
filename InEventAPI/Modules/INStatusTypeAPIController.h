#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INStatusTypeAPIController : INAPIController

#pragma mark - StatusType
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name;
- (void)operateAuthenticatedAtStatusType:(NSInteger)statusTypeID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtStatusType:(NSInteger)statusTypeID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
@end
