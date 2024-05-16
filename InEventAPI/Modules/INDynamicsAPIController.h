#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDynamicsAPIController : INAPIController

#pragma mark - Dynamics
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withDomain:(NSString *)domain withAppId:(NSString *)appId withAppSecret:(NSString *)appSecret;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findEventsAuthenticatedAtCompany:(NSInteger)companyID withOffset:(NSString *)offset withSearch:(NSString *)search;
- (void)getEventAuthenticatedAtCompany:(NSInteger)companyID withMsdEventId:(NSString *)msdEventId;
- (void)createEventEntityAuthenticatedAtEventAtCompany:(NSInteger)companyID withEntity:(NSString *)entity atFeedback:(NSInteger)feedbackID;
- (void)findEventEntitiesAuthenticatedAtEventAtCompany:(NSInteger)companyID withEntity:(NSString *)entity withOffset:(NSString *)offset withRefresh:(NSString *)refresh;
- (void)findEventEntitiesAuthenticatedAtCompany:(NSInteger)companyID withMsdEventId:(NSString *)msdEventId withEntity:(NSString *)entity withOffset:(NSString *)offset withRefresh:(NSString *)refresh;
- (void)findActivityEntitiesAuthenticatedAtCompany:(NSInteger)companyID withMsdActivityId:(NSString *)msdActivityId withEntity:(NSString *)entity withOffset:(NSString *)offset;
@end
