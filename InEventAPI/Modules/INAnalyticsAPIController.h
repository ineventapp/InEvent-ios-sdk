#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAnalyticsAPIController : INAPIController

#pragma mark - Analytics
- (void)getAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withPage:(NSString *)page;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID withPage:(NSString *)page;
@end
