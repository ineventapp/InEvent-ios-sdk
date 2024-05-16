#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAppointmentHostAPIController : INAPIController

#pragma mark - AppointmentHost
- (void)bindAuthenticatedAtEventAtAppointment:(NSInteger)appointmentID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtAppointmentHost:(NSInteger)appointmentHostID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtAppointmentHost:(NSInteger)appointmentHostID;
- (void)avaliableAuthenticatedAtHost:(NSInteger)hostID atAppointment:(NSInteger)appointmentID withDate:(NSString *)date withSlotDate:(NSString *)slotDate withSlotTime:(NSString *)slotTime;
@end
