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
- (void)dismissAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtEvent;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventWithEmail:(NSString *)email;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAuthenticatedAtEvent;
- (void)ticketAuthenticatedAtEventWithEbCode:(NSString *)ebCode withEbToken:(NSString *)ebToken;
- (void)rememberAuthenticatedAtEvent;
- (void)rsvpAuthenticatedAtEvent;
- (void)qrCodeAuthenticatedAtEventWithQuery:(NSString *)query;
- (void)qrCodeAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)printAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)voucherAuthenticatedAtEvent;
@end