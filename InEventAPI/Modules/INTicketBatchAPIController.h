#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTicketBatchAPIController : INAPIController

#pragma mark - TicketBatch
- (void)createAuthenticatedAtTicket:(NSInteger)ticketID withPrice:(NSString *)price;
- (void)editAuthenticatedAtTicketBatch:(NSInteger)ticketBatchID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtTicketBatch:(NSInteger)ticketBatchID;
- (void)findAuthenticatedAtTicket:(NSInteger)ticketID withSelection:(NSString *)selection;
@end
