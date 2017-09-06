#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCompanyEventAPIController : INAPIController

#pragma mark - CompanyEvent
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname;
- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withPath:(NSString *)path;
- (void)dismissAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)getAtEventAtCompany:(NSInteger)companyID;
- (void)findAttendeesAuthenticatedAtCompany:(NSInteger)companyID;
- (void)approveAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)reviewAuthenticatedAtEventAtCompany:(NSInteger)companyID withMessage:(NSString *)message;
- (void)copyAuthenticatedAtEventAtCompany:(NSInteger)companyID;
- (void)budgetAuthenticatedAtCompany:(NSInteger)companyID;
@end