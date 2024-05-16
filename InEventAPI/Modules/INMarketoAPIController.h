#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMarketoAPIController : INAPIController

#pragma mark - Marketo
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtEvent;
- (void)linkAccountAuthenticatedAtCompany:(NSInteger)companyID withClientId:(NSString *)clientId withClientSecret:(NSString *)clientSecret withMunchkinId:(NSString *)munchkinId;
- (void)unlinkAccountAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getFoldersAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getChannelsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getListsAuthenticatedAtEventWithAllLists:(NSString *)allLists;
- (void)getTagsAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getTypesAuthenticated;
- (void)getProgramAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name;
- (void)getProgramAuthenticatedAtCompany:(NSInteger)companyID withProgramId:(NSString *)programId;
- (void)importAuthenticatedAtEventAtMktList:(NSInteger)mktListID withTarget:(NSString *)target atTarget:(NSInteger)targetID;
- (void)exportAuthenticatedAtEventAtMktList:(NSInteger)mktListID withTarget:(NSString *)target atTarget:(NSInteger)targetID;
- (void)syncAvailableFieldsAuthenticatedAtCompany:(NSInteger)companyID;
@end
