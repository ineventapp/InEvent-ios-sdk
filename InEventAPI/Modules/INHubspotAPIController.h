#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHubspotAPIController : INAPIController

#pragma mark - Hubspot
- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findPropertiesAuthenticatedAtEvent;
@end
