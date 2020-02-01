#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTemplateEventAPIController : INAPIController

#pragma mark - TemplateEvent
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color;
- (void)editAuthenticatedAtTemplateEvent:(NSInteger)templateEventID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtTemplateEvent:(NSInteger)templateEventID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withGlobal:(NSString *)global;
- (void)getAuthenticatedAtTemplateEvent:(NSInteger)templateEventID;
@end
