#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPartyAPIController : INAPIController

#pragma mark - CompanyParty
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withShortName:(NSString *)shortName withStoreTitle:(NSString *)storeTitle;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID atParty:(NSInteger)partyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withOrder:(NSString *)order;
@end