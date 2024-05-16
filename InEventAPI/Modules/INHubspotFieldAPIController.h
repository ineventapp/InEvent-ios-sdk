#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHubspotFieldAPIController : INAPIController

#pragma mark - HubspotField
- (void)bindAuthenticatedAtEventWithSource:(NSString *)source atFeedback:(NSInteger)feedbackID atHsField:(NSInteger)hsFieldID;
- (void)bindAuthenticatedAtEventWithSource:(NSString *)source withFormKey:(NSString *)formKey atHsField:(NSInteger)hsFieldID;
- (void)dismissAuthenticatedAtHubspotField:(NSInteger)hubspotFieldID;
- (void)dismissAuthenticatedAtFeedback:(NSInteger)feedbackID;
- (void)findAuthenticatedAtEventWithSource:(NSString *)source;
- (void)getAuthenticatedAtHubspotField:(NSInteger)hubspotFieldID;
@end
