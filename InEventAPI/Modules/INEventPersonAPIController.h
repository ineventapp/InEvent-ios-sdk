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
- (void)getAuthenticatedAtFeedback:(NSInteger)feedbackID withValue:(NSString *)value;
- (void)getAuthenticatedAtEventWithEmail:(NSString *)email;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAuthenticatedAtEventWithQrCode:(NSString *)qrCode;
- (void)getAuthenticatedAtEventWithNfc:(NSString *)nfc;
- (void)getAuthenticatedAtEvent;
- (void)rememberAuthenticatedAtEvent;
- (void)qrCodeAuthenticatedAtEventWithQuery:(NSString *)query withMatch:(NSString *)match;
- (void)qrCodeAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)printAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)printedAuthenticatedAtEvent;
- (void)voucherAuthenticatedAtEvent;
@end
