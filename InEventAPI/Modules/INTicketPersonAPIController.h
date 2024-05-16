#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketPersonAPIController : INAPIController

#pragma mark - TicketPerson
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
- (void)inviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID withImmediateFill:(NSString *)immediateFill withName:(NSString *)name withEmail:(NSString *)email;
- (void)acceptInviteAuthenticatedAtEventWithTicketToken:(NSString *)ticketToken;
- (void)cancelInviteAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
- (void)makeDefaultAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
- (void)undoDefaultAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
- (void)dismissAuthenticatedAtTicketPerson:(NSInteger)ticketPersonID;
@end
