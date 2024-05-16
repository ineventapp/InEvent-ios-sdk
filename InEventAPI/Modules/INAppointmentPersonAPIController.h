#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAppointmentPersonAPIController : INAPIController

#pragma mark - AppointmentPerson
- (void)bindAuthenticatedAtEventAtAppointment:(NSInteger)appointmentID forPerson:(NSInteger)personID atHost:(NSInteger)hostID atMeeting:(NSInteger)meetingID withDate:(NSString *)date withSlotTime:(NSString *)slotTime withSlotDay:(NSString *)slotDay;
- (void)dismissAuthenticatedAtAppointmentMember:(NSInteger)appointmentMemberID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtAppointmentMember:(NSInteger)appointmentMemberID;
@end
