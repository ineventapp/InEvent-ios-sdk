#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventPersonAPIController : INAPIController

#pragma mark - EventPerson
- (void)bindAuthenticatedAtEventWithName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withAccessCode:(NSString *)accessCode;
- (void)bindAtEventWithInvite:(NSString *)invite withEmail:(NSString *)email withName:(NSString *)name withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withRsvp:(NSString *)rsvp;
- (void)bindAuthenticatedAtEventWithPath:(NSString *)path;
- (void)bindAuthenticatedAtEventWithAccessCode:(NSString *)accessCode;
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)operateAuthenticatedAtEventForPerson:(NSInteger)personID withContent:(NSString *)content;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtEventWithContent:(NSString *)content;
- (void)dismissAuthenticatedAtEvent;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withMatch:(NSString *)match withFullProfile:(NSString *)fullProfile;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTemplates:(NSString *)templates withSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withEvents:(NSString *)events withSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTags:(NSString *)tags withSelection:(NSString *)selection withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection;
- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID withValue:(NSString *)value withFeedbackMode:(NSString *)feedbackMode;
- (void)getAuthenticatedAtEventWithEmail:(NSString *)email withFeedbackMode:(NSString *)feedbackMode;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID withFeedbackMode:(NSString *)feedbackMode;
- (void)getAuthenticatedAtEventWithQrCode:(NSString *)qrCode withFeedbackMode:(NSString *)feedbackMode;
- (void)getAuthenticatedAtEventWithQrCode:(NSString *)qrCode withMode:(NSString *)mode;
- (void)getAuthenticatedAtEventWithNfc:(NSString *)nfc withFeedbackMode:(NSString *)feedbackMode;
- (void)getAuthenticatedAtEventWithFeedbackMode:(NSString *)feedbackMode;
- (void)getAuthenticatedForPerson:(NSInteger)personID atCompany:(NSInteger)companyID;
- (void)getLastEntryAuthenticatedAtCompany:(NSInteger)companyID;
- (void)rememberAuthenticatedAtEvent;
- (void)qrCodeAuthenticatedAtEventWithQuery:(NSString *)query withMatch:(NSString *)match;
- (void)qrCodeAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)printAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)printedAuthenticatedAtEvent;
- (void)printedListAuthenticatedAtEvent;
- (void)verifyEmailAtEventWithEmail:(NSString *)email withVerifyEmailToken:(NSString *)verifyEmailToken;
- (void)requestMagicLinkAtEventWithEmail:(NSString *)email withVerifyEmailToken:(NSString *)verifyEmailToken;
- (void)requestMagicLinkAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)regenerateQrCodeAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)voucherAuthenticatedAtEvent;
@end
