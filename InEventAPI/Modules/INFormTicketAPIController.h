#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormTicketAPIController : INAPIController

#pragma mark - FormTicket
- (void)bindAuthenticatedAtTicket:(NSInteger)ticketID atForm:(NSInteger)formID;
- (void)dismissAuthenticatedAtTicket:(NSInteger)ticketID atForm:(NSInteger)formID;
- (void)findAuthenticatedAtForm:(NSInteger)formID;
@end
