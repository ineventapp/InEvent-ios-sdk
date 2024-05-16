#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INStatusAPIController : INAPIController

#pragma mark - Status
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withObject:(NSString *)object withLabel:(NSString *)label atStatusType:(NSInteger)statusTypeID withProgressive:(NSString *)progressive;
- (void)createAuthenticatedAtEventWithObject:(NSString *)object withLabel:(NSString *)label withProgressive:(NSString *)progressive;
- (void)editAuthenticatedAtStatus:(NSInteger)statusID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withContent:(NSString *)content;
- (void)removeAuthenticatedAtStatus:(NSInteger)statusID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID atStatusType:(NSInteger)statusTypeID withObject:(NSString *)object;
- (void)findAuthenticatedAtEventWithObject:(NSString *)object;
@end
