#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketSponsorAPIController : INAPIController

#pragma mark - TicketSponsor
- (void)createAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID atTicket:(NSInteger)ticketID withQuantity:(NSString *)quantity;
- (void)bindAuthenticatedAtEventAtTicketSponsor:(NSInteger)ticketSponsorID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtEventAtTicketSponsor:(NSInteger)ticketSponsorID forPerson:(NSInteger)personID;
- (void)removeAuthenticatedAtEventAtTicketSponsor:(NSInteger)ticketSponsorID;
- (void)findAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
