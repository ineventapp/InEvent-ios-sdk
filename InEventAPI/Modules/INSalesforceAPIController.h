#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceAPIController : INAPIController

#pragma mark - Salesforce
- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)getCampaignsAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)describeCustomObjectAuthenticatedAtEventAtCompany:(NSInteger)companyID withSfObject:(NSString *)sfObject withRefresh:(NSString *)refresh withName:(NSString *)name;
- (void)getCustomObjectsAuthenticatedAtEventAtCompany:(NSInteger)companyID withRefresh:(NSString *)refresh withName:(NSString *)name;
- (void)getLeadListsAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)getContactListsAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)getPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource;
- (void)getFieldsAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)importPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withLocal:(NSString *)local atList:(NSInteger)listID withPeople:(NSString *)people;
- (void)importPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withLocal:(NSString *)local atList:(NSInteger)listID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource;
- (void)exportPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withType:(NSString *)type withLocal:(NSString *)local;
- (void)unlinkAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)editAuthenticatedAtEventAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
@end
