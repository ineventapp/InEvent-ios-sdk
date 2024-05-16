#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketAPIController : INAPIController

#pragma mark - Ticket
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtTicket:(NSInteger)ticketID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtTicket:(NSInteger)ticketID;
- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated atChain:(NSInteger)chainID withQuery:(NSString *)query;
- (void)findAtEvent;
- (void)getAuthenticatedAtTicket:(NSInteger)ticketID;
- (void)payAuthenticatedAtEventWithContent:(NSString *)content withSession_nounce:(NSString *)session_nounce;
- (void)lastBillingAuthenticatedAtEvent;
@end
