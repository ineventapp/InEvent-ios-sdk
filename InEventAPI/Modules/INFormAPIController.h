#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormAPIController : INAPIController

#pragma mark - Form
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withTitle:(NSString *)title withType:(NSString *)type withDescription:(NSString *)description;
- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description;
- (void)editAuthenticatedAtForm:(NSInteger)formID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtForm:(NSInteger)formID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withComplementRegistration:(NSString *)complementRegistration;
- (void)findAuthenticatedAtEventWithComplementRegistration:(NSString *)complementRegistration;
- (void)getAuthenticatedAtForm:(NSInteger)formID;
- (void)respondRegistrationAuthenticatedAtEventAtTicketPerson:(NSInteger)ticketPersonID withTicketToken:(NSString *)ticketToken withFeedbackContent:(NSString *)feedbackContent withEmail:(NSString *)email withUsername:(NSString *)username withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities;
- (void)respondRegistrationAuthenticatedAtEventWithFeedbackContent:(NSString *)feedbackContent withInvite:(NSString *)invite withEmail:(NSString *)email withUsername:(NSString *)username withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withRsvp:(NSString *)rsvp withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities;
- (void)respondCustomAuthenticatedAtEventAtForm:(NSInteger)formID forPerson:(NSInteger)personID withContent:(NSString *)content;
- (void)respondCustomAuthenticatedAtEventWithContent:(NSString *)content;
- (void)respondCustomAtEventWithInvite:(NSString *)invite withContent:(NSString *)content;
- (void)respondCustomAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password;
- (void)respondMeetingAuthenticatedAtEventAtForm:(NSInteger)formID forPerson:(NSInteger)personID withContent:(NSString *)content;
- (void)respondMeetingAuthenticatedAtEventWithContent:(NSString *)content;
- (void)respondMeetingAtEventWithInvite:(NSString *)invite withContent:(NSString *)content;
- (void)respondMeetingAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password;
@end
