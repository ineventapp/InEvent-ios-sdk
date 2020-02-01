#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INProfileAPIController : INAPIController

#pragma mark - Profile
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name;
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)editAuthenticatedAtProfile:(NSInteger)profileID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtProfile:(NSInteger)profileID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
@end
