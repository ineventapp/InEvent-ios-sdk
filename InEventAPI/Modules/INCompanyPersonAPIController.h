#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPersonAPIController : INAPIController

#pragma mark - CompanyPerson
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withEmail:(NSString *)email;
- (void)operateAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withOrder:(NSString *)order;
@end