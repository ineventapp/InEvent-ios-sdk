#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMarketoFieldAPIController : INAPIController

#pragma mark - MarketoField
- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID withMkFieldId:(NSString *)mkFieldId;
- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey withMkFieldId:(NSString *)mkFieldId;
- (void)dismissAuthenticatedAtMarketoField:(NSInteger)marketoFieldID;
- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtMarketoField:(NSInteger)marketoFieldID;
@end
