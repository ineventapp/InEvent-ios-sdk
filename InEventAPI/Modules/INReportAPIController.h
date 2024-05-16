#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INReportAPIController : INAPIController

#pragma mark - Report
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withFilter:(NSString *)filter;
- (void)editAuthenticatedAtReport:(NSInteger)reportID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtReport:(NSInteger)reportID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection;
- (void)getAuthenticatedAtReport:(NSInteger)reportID;
- (void)snapshotAuthenticatedAtReport:(NSInteger)reportID withName:(NSString *)name;
@end
