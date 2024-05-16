#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INDynamicsFieldAPIController : INAPIController

#pragma mark - DynamicsField
- (void)bindAuthenticatedAtEventWithSource:(NSString *)source atFeedback:(NSInteger)feedbackID withMsdFieldTable:(NSString *)msdFieldTable withMsdFieldId:(NSString *)msdFieldId;
- (void)bindAuthenticatedAtEventWithSource:(NSString *)source withFormKey:(NSString *)formKey withMsdFieldTable:(NSString *)msdFieldTable withMsdFieldId:(NSString *)msdFieldId;
- (void)dismissAuthenticatedAtDynamicsField:(NSInteger)dynamicsFieldID;
- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEventWithSource:(NSString *)source;
- (void)getAuthenticatedAtDynamicsField:(NSInteger)dynamicsFieldID;
@end
