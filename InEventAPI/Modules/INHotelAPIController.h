#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotelAPIController : INAPIController

#pragma mark - Hotel
- (void)createAuthenticatedAtEventWithName:(NSString *)name withAddress:(NSString *)address withCity:(NSString *)city withState:(NSString *)state withCountry:(NSString *)country withZipCode:(NSString *)zipCode withTelephone:(NSString *)telephone withDefault:(NSString *)default withShow:(NSString *)show withWaitlist:(NSString *)waitlist withGuest:(NSString *)guest withAllowChanges:(NSString *)allowChanges withCheckInTime:(NSString *)checkInTime withCheckOutTime:(NSString *)checkOutTime withCancellationPolicy:(NSString *)cancellationPolicy withAcceptsBookingUntil:(NSString *)acceptsBookingUntil;
- (void)editAuthenticatedAtHotel:(NSInteger)hotelID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtHotel:(NSInteger)hotelID;
- (void)findAuthenticatedAtEventWithPublic:(NSString *)public;
- (void)findAtEvent;
- (void)getAuthenticatedAtHotel:(NSInteger)hotelID;
- (void)analyticsAuthenticatedAtEventWithOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection;
@end
