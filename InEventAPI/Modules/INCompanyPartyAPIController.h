#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyPartyAPIController : INAPIController

#pragma mark - CompanyParty
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withLocation:(NSString *)location;
- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID atParty:(NSInteger)partyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withOrder:(NSString *)order;
@end