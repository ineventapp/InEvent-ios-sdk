#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketAPIController : INAPIController

#pragma mark - Ticket
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtTicket:(NSInteger)ticketID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtTicket:(NSInteger)ticketID;
- (void)findAuthenticatedAtEvent;
- (void)findAtEvent;
- (void)getAuthenticatedAtTicket:(NSInteger)ticketID;
- (void)payAuthenticatedAtEventWithContent:(NSString *)content;
- (void)lastBillingAuthenticatedAtEvent;
@end
