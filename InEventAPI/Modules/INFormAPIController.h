#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormAPIController : INAPIController

#pragma mark - Form
- (void)createAuthenticatedAtCompany:(NSInteger)companyID atSyncList:(NSInteger)syncListID withTitle:(NSString *)title withType:(NSString *)type withDescription:(NSString *)description;
- (void)createAuthenticatedAtEventAtSyncList:(NSInteger)syncListID withTitle:(NSString *)title withDescription:(NSString *)description withComplementRegistration:(NSString *)complementRegistration;
- (void)editAuthenticatedAtForm:(NSInteger)formID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtForm:(NSInteger)formID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withComplementRegistration:(NSString *)complementRegistration withListing:(NSString *)listing withStatus:(NSString *)status;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withComplementRegistration:(NSString *)complementRegistration withListing:(NSString *)listing withStatus:(NSString *)status;
- (void)getAuthenticatedAtForm:(NSInteger)formID withListing:(NSString *)listing;
- (void)respondRegistrationAuthenticatedAtEventWithLogin:(NSString *)login atTicketPerson:(NSInteger)ticketPersonID withTicketToken:(NSString *)ticketToken withInvite:(NSString *)invite withFeedbackContent:(NSString *)feedbackContent withEmail:(NSString *)email withAssistantEmail:(NSString *)assistantEmail withUsername:(NSString *)username withSalutation:(NSString *)salutation withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone withImage:(NSString *)image withPrivate:(NSString *)private withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities atTags:(NSInteger)tagIDs;
- (void)respondRegistrationAuthenticatedAtEventWithLogin:(NSString *)login withFeedbackContent:(NSString *)feedbackContent withInvite:(NSString *)invite withEmail:(NSString *)email withAssistantEmail:(NSString *)assistantEmail withUsername:(NSString *)username withSalutation:(NSString *)salutation withFirstName:(NSString *)firstName withLastName:(NSString *)lastName withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone withImage:(NSString *)image withRsvp:(NSString *)rsvp withPrivate:(NSString *)private withGuestContent:(NSString *)guestContent withActivities:(NSString *)activities atTags:(NSInteger)tagIDs;
- (void)respondCustomAuthenticatedAtEventAtForm:(NSInteger)formID forPerson:(NSInteger)personID withContent:(NSString *)content;
- (void)respondCustomAuthenticatedAtEventWithContent:(NSString *)content;
- (void)respondCustomAtEventWithInvite:(NSString *)invite withContent:(NSString *)content;
- (void)respondCustomAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password;
- (void)respondMeetingAuthenticatedAtEventAtForm:(NSInteger)formID forPerson:(NSInteger)personID withContent:(NSString *)content;
- (void)respondMeetingAuthenticatedAtEventWithContent:(NSString *)content;
- (void)respondMeetingAtEventWithInvite:(NSString *)invite withContent:(NSString *)content;
- (void)respondMeetingAtEventForPerson:(NSInteger)personID withContent:(NSString *)content withPassword:(NSString *)password;
@end
