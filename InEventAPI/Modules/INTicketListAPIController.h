#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketListAPIController : INAPIController

#pragma mark - TicketList
- (void)bindAuthenticatedAtList:(NSInteger)listID atTicket:(NSInteger)ticketID withTrigger:(NSString *)trigger;
- (void)dismissAuthenticatedAtList:(NSInteger)listID atTicket:(NSInteger)ticketID withTrigger:(NSString *)trigger;
- (void)findAuthenticatedAtTicket:(NSInteger)ticketID;
@end
