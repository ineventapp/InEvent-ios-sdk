#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INShuttleAPIController : INAPIController

#pragma mark - Shuttle
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDeparture:(NSString *)departure withArrival:(NSString *)arrival withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withLicensePlate:(NSString *)licensePlate withCarModel:(NSString *)carModel withDriverName:(NSString *)driverName withConfirmation:(NSString *)confirmation;
- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withDeparture:(NSString *)departure withArrival:(NSString *)arrival withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withLicensePlate:(NSString *)licensePlate withCarModel:(NSString *)carModel withDriverName:(NSString *)driverName withConfirmation:(NSString *)confirmation;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtEvent;
- (void)removeAuthenticatedAtShuttle:(NSInteger)shuttleID;
@end