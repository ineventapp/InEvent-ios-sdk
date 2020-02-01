#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketDiscountAPIController : INAPIController

#pragma mark - TicketDiscount
- (void)bindAuthenticatedAtTicket:(NSInteger)ticketID withTickets:(NSString *)tickets withDiscount:(NSString *)discount;
- (void)dismissAuthenticatedAtTicketDiscount:(NSInteger)ticketDiscountID;
- (void)findAtTicket:(NSInteger)ticketID;
@end
