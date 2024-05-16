#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanySlideAPIController : INAPIController

#pragma mark - CompanySlide
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withAddress:(NSString *)address withQuarter:(NSString *)quarter withYear:(NSString *)year;
- (void)dismissAuthenticatedAtCompanySlide:(NSInteger)companySlideID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtCompanySlide:(NSInteger)companySlideID;
@end
