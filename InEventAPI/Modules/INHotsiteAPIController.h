#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotsiteAPIController : INAPIController

#pragma mark - Hotsite
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text;
- (void)createAuthenticatedAtEventWithSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtEventWithSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section withContent:(NSString *)content;
- (void)editAuthenticatedAtEventWithSection:(NSString *)section withContent:(NSString *)content;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section;
- (void)removeAuthenticatedAtEventWithSection:(NSString *)section;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID withSection:(NSString *)section;
- (void)getAuthenticatedAtEventWithSection:(NSString *)section;
- (void)getConfigAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getConfigAuthenticatedAtEvent;
- (void)setConfigAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)setConfigAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
@end
