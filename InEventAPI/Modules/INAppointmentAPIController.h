#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAppointmentAPIController : INAPIController

#pragma mark - Appointment
- (void)createAuthenticatedAtEventWithName:(NSString *)name withVirtual:(NSString *)virtual withLocation:(NSString *)location withDescription:(NSString *)description withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withKey:(NSString *)key withDuration:(NSString *)duration withAvailability:(NSString *)availability atHosts:(NSInteger)hostIDs;
- (void)editAuthenticatedAtAppointment:(NSInteger)appointmentID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtAppointment:(NSInteger)appointmentID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtAppointment:(NSInteger)appointmentID;
- (void)getAuthenticatedAtEventWithKey:(NSString *)key;
@end
