#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INShuttleAPIController : INAPIController

#pragma mark - Shuttle
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDeparture:(NSString *)departure withArrival:(NSString *)arrival withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withLicensePlate:(NSString *)licensePlate withCarModel:(NSString *)carModel withDriverName:(NSString *)driverName withConfirmation:(NSString *)confirmation withMessage:(NSString *)message;
- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withDeparture:(NSString *)departure withArrival:(NSString *)arrival withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withLicensePlate:(NSString *)licensePlate withCarModel:(NSString *)carModel withDriverName:(NSString *)driverName withConfirmation:(NSString *)confirmation withMessage:(NSString *)message;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtShuttle:(NSInteger)shuttleID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtShuttle:(NSInteger)shuttleID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtEvent;
- (void)statsAuthenticatedAtEvent;
@end
