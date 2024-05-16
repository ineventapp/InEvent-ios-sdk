#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventAPIController : INAPIController

#pragma mark - Event
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID withQuickLoad:(NSString *)quickLoad withWithCss:(NSString *)withCss;
- (void)getAuthenticatedAtEventWithQuickLoad:(NSString *)quickLoad withWithCss:(NSString *)withCss;
- (void)getAtEventWithQuickLoad:(NSString *)quickLoad;
- (void)checkAccessCodeAuthenticatedAtEventWithAccessCode:(NSString *)accessCode;
- (void)sendSMSAtEventWithTelephone:(NSString *)telephone;
- (void)searchAuthenticatedAtEventWithQuery:(NSString *)query;
- (void)emailDnsStatusAuthenticatedAtEvent;
- (void)aiRequestAuthenticatedAtEventWithModel:(NSString *)model withPrompt:(NSString *)prompt;
- (void)reportAuthenticatedAtEventWithIncludes:(NSString *)includes;
@end
