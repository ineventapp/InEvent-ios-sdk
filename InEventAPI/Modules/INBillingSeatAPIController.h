#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBillingSeatAPIController : INAPIController

#pragma mark - BillingSeat
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withEmail:(NSString *)email;
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withPath:(NSString *)path;
- (void)dismissAuthenticatedAtBillingSeat:(NSInteger)billingSeatID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withQuery:(NSString *)query;
@end
