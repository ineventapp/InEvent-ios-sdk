#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotelReservationAPIController : INAPIController

#pragma mark - HotelReservation
- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID atGuest:(NSInteger)guestID atHotelBlock:(NSInteger)hotelBlockID atHotelReservation:(NSInteger)hotelReservationID;
- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID atGuest:(NSInteger)guestID withContent:(NSString *)content;
- (void)bindAuthenticatedAtEventWithPublic:(NSString *)public withGuest:(NSString *)guest atHotelType:(NSInteger)hotelTypeID withHotelBlocks:(NSString *)hotelBlocks;
- (void)replaceAuthenticatedAtEventForPerson:(NSInteger)personID atGuest:(NSInteger)guestID atOriginalHotel:(NSInteger)originalHotelID atNewHotel:(NSInteger)newHotelID atOriginalHotelBlocks:(NSInteger)originalHotelBlockIDs atNewHotelBlocks:(NSInteger)newHotelBlockIDs;
- (void)dismissAuthenticatedAtHotelReservation:(NSInteger)hotelReservationID;
- (void)dismissAuthenticatedAtEventWithPublic:(NSString *)public withIds:(NSString *)ids;
- (void)dismissAuthenticatedAtEventWithPublic:(NSString *)public withDates:(NSString *)dates;
- (void)findAuthenticatedAtEventAtHotel:(NSInteger)hotelID atHotelReservations:(NSInteger)hotelReservationIDs withSelf:(NSString *)self withBlockDate:(NSString *)blockDate withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection;
- (void)checkInsAuthenticatedAtEventAtHotel:(NSInteger)hotelID withSelf:(NSString *)self withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection;
@end
