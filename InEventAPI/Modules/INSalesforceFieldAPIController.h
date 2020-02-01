#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceFieldAPIController : INAPIController

#pragma mark - SalesforceField
- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withSfFieldId:(NSString *)sfFieldId;
- (void)dismissAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID;
- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID;
@end
