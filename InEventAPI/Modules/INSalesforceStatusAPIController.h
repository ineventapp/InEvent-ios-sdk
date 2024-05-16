#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceStatusAPIController : INAPIController

#pragma mark - SalesforceStatus
- (void)bindAuthenticatedAtEventWithInTrigger:(NSString *)inTrigger withSfStatus:(NSString *)sfStatus;
- (void)dismissAuthenticatedAtSalesforceStatus:(NSInteger)salesforceStatusID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtSalesforceStatus:(NSInteger)salesforceStatusID;
- (void)getStatusesAuthenticatedAtEvent;
@end
