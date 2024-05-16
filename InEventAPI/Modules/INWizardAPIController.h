#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INWizardAPIController : INAPIController

#pragma mark - Wizard
- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description withLink:(NSString *)link;
- (void)editAuthenticatedAtWizard:(NSInteger)wizardID withKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtEventWithContent:(NSString *)content;
- (void)removeAuthenticatedAtWizard:(NSInteger)wizardID;
- (void)findAuthenticatedAtEvent;
@end
