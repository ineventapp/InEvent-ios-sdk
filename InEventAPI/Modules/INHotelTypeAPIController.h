#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotelTypeAPIController : INAPIController

#pragma mark - HotelType
- (void)bindAuthenticatedAtEventAtHotel:(NSInteger)hotelID withName:(NSString *)name;
- (void)operateAuthenticatedAtHotelType:(NSInteger)hotelTypeID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtHotelType:(NSInteger)hotelTypeID;
- (void)dismissAuthenticatedAtEventWithIds:(NSString *)ids;
- (void)findAuthenticatedAtEvent;
- (void)findAuthenticatedAtHotel:(NSInteger)hotelID;
- (void)getAuthenticatedAtHotelType:(NSInteger)hotelTypeID;
@end
