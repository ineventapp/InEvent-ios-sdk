#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INHotelBlockAPIController : INAPIController

#pragma mark - HotelBlock
- (void)bindAuthenticatedAtEventAtHotel:(NSInteger)hotelID withBlockDate:(NSString *)blockDate withRooms:(NSString *)rooms withAttrition:(NSString *)attrition;
- (void)bindAuthenticatedAtEventAtHotel:(NSInteger)hotelID withContent:(NSString *)content;
- (void)operateAuthenticatedAtHotelBlock:(NSInteger)hotelBlockID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtHotelBlock:(NSInteger)hotelBlockID;
- (void)dismissAuthenticatedAtEventWithIds:(NSString *)ids;
- (void)findAuthenticatedAtEvent;
- (void)findAuthenticatedAtHotel:(NSInteger)hotelID;
- (void)getAuthenticatedAtHotelBlock:(NSInteger)hotelBlockID;
@end
