#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCventFieldAPIController : INAPIController

#pragma mark - CventField
- (void)bindAuthenticatedAtEventAtFeedback:(NSInteger)feedbackID atCvField:(NSInteger)cvFieldID;
- (void)bindAuthenticatedAtEventWithFormKey:(NSString *)formKey atCvField:(NSInteger)cvFieldID;
- (void)dismissAuthenticatedAtCventField:(NSInteger)cventFieldID;
- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtCventField:(NSInteger)cventFieldID;
- (void)getCventFieldsAuthenticatedAtEventWithRefresh:(NSString *)refresh;
@end
