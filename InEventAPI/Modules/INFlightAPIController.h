#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFlightAPIController : INAPIController

#pragma mark - Flight
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withSeat:(NSString *)seat withTicketType:(NSString *)ticketType withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateIssue:(NSString *)dateIssue withPrice:(NSString *)price withPriceConversion:(NSString *)priceConversion withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket withConfirmation:(NSString *)confirmation withMessage:(NSString *)message;
- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withTicketType:(NSString *)ticketType withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withDateIssue:(NSString *)dateIssue withPrice:(NSString *)price withPriceConversion:(NSString *)priceConversion withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket withConfirmation:(NSString *)confirmation withMessage:(NSString *)message;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtFlight:(NSInteger)flightID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtFlight:(NSInteger)flightID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withQueryKey:(NSString *)queryKey;
- (void)statsAuthenticatedAtEvent;
@end
