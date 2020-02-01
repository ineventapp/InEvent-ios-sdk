#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketPersonAPIController : INAPIController

#pragma mark - TicketPerson
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
- (void)inviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID withImmediateFill:(NSString *)immediateFill withName:(NSString *)name withEmail:(NSString *)email;
- (void)acceptInviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID withTicketToken:(NSString *)ticketToken withPassword:(NSString *)password withName:(NSString *)name withUsername:(NSString *)username withRole:(NSString *)role withCompany:(NSString *)company;
- (void)cancelInviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
- (void)makeDefaultAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
- (void)undoDefaultAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
@end
