#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyEventAPIController : INAPIController

#pragma mark - CompanyEvent
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname;
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withPath:(NSString *)path;
- (void)dismissAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPresential:(NSString *)presential withPublic:(NSString *)public withVisible:(NSString *)visible withArchived:(NSString *)archived atTemplate:(NSInteger)templateID atPlace:(NSInteger)placeID withOrder:(NSString *)order withTimezone:(NSString *)timezone withTags:(NSString *)tags withEvents:(NSString *)events withStripTagsDescription:(NSString *)stripTagsDescription withCurrent:(NSString *)current;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withTags:(NSString *)tags;
- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPresential:(NSString *)presential withPublic:(NSString *)public withVisible:(NSString *)visible withOrder:(NSString *)order withTags:(NSString *)tags;
- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withTags:(NSString *)tags;
- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)getAtEventAtCompany:(NSInteger)companyID;
- (void)findAttendeesAuthenticatedAtCompany:(NSInteger)companyID;
- (void)copyAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)budgetAuthenticatedAtCompany:(NSInteger)companyID;
- (void)assignOwnerAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)pinAuthenticatedAtEvent;
- (void)unpinAuthenticatedAtEvent;
@end
