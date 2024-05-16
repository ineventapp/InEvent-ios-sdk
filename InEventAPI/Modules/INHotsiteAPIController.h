#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotsiteAPIController : INAPIController

#pragma mark - Hotsite
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text;
- (void)createAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section withPosition:(NSString *)position withName:(NSString *)name withText:(NSString *)text;
- (void)createPageAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page;
- (void)createPageAuthenticatedAtEventWithPage:(NSString *)page;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section withContent:(NSString *)content;
- (void)editAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section withContent:(NSString *)content;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section;
- (void)removeAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section;
- (void)removePageAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page;
- (void)removePageAuthenticatedAtEventWithPage:(NSString *)page;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page;
- (void)findAuthenticatedAtEventWithPage:(NSString *)page;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withSection:(NSString *)section;
- (void)getAuthenticatedAtEventWithPage:(NSString *)page withSection:(NSString *)section;
- (void)getPagesAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getPagesAuthenticatedAtEvent;
- (void)getConfigAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page;
- (void)getConfigAuthenticatedAtEventWithPage:(NSString *)page;
- (void)setConfigAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withKey:(NSString *)key withValue:(NSString *)value;
- (void)setConfigAuthenticatedAtEventWithPage:(NSString *)page withKey:(NSString *)key withValue:(NSString *)value;
- (void)rebuildAuthenticatedAtEvent;
@end
