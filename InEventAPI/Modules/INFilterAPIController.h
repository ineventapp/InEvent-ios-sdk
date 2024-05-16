#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFilterAPIController : INAPIController

#pragma mark - Filter
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withTarget:(NSString *)target withFilter:(NSString *)filter;
- (void)editAuthenticatedAtFilter:(NSInteger)filterID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFilter:(NSInteger)filterID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTarget:(NSString *)target;
@end
