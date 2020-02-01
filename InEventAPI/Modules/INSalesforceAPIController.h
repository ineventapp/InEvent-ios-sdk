#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceAPIController : INAPIController

#pragma mark - Salesforce
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getCampaignsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getLeadListsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getContactListsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getPeopleAuthenticatedAtCompany:(NSInteger)companyID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource;
- (void)getFieldsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)importPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withLocal:(NSString *)local atList:(NSInteger)listID withPeople:(NSString *)people;
- (void)importPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withLocal:(NSString *)local atList:(NSInteger)listID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource;
- (void)exportPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withType:(NSString *)type withLocal:(NSString *)local;
- (void)unlinkAuthenticatedAtCompany:(NSInteger)companyID;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
@end
