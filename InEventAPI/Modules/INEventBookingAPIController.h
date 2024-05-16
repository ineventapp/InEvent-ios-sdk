#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventBookingAPIController : INAPIController

#pragma mark - EventBooking
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withTimezone:(NSString *)timezone withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withEventFields:(NSString *)eventFields withExtras:(NSString *)extras atTemplate:(NSInteger)templateID atForCompany:(NSInteger)forCompanyID atForm:(NSInteger)formID;
- (void)editAuthenticatedAtCompany:(NSInteger)companyID atEventBooking:(NSInteger)eventBookingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)authorizeAuthenticatedAtCompany:(NSInteger)companyID atEventBooking:(NSInteger)eventBookingID atTemplate:(NSInteger)templateID atSibling:(NSInteger)siblingID;
- (void)rejectAuthenticatedAtEventBooking:(NSInteger)eventBookingID withMessage:(NSString *)message;
- (void)assignOwnerAuthenticatedAtEventBooking:(NSInteger)eventBookingID forPerson:(NSInteger)personID;
@end
