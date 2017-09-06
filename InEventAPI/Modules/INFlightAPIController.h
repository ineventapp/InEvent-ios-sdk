#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFlightAPIController : INAPIController

#pragma mark - Flight
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket;
- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withAirline:(NSString *)airline withNumber:(NSString *)number withGate:(NSString *)gate withAirportBegin:(NSString *)airportBegin withAirportEnd:(NSString *)airportEnd withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withInsurance:(NSString *)insurance withETicket:(NSString *)eTicket;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtEvent;
- (void)removeAuthenticatedAtFlight:(NSInteger)flightID;
@end