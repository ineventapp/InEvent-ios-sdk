#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceFieldAPIController : INAPIController

#pragma mark - SalesforceField
- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withSfFieldTable:(NSString *)sfFieldTable withSfFieldId:(NSString *)sfFieldId;
- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey withSfFieldTable:(NSString *)sfFieldTable withSfFieldId:(NSString *)sfFieldId;
- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withSfFieldTables:(NSString *)sfFieldTables withSfFieldIds:(NSString *)sfFieldIds;
- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey withSfFieldTables:(NSString *)sfFieldTables withSfFieldIds:(NSString *)sfFieldIds;
- (void)operateAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID;
- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)dismissAuthenticatedAtEventWithSfFieldTable:(NSString *)sfFieldTable withSfFieldId:(NSString *)sfFieldId;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtSalesforceField:(NSInteger)salesforceFieldID;
@end
