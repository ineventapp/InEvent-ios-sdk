#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventBookingAPIController : INAPIController

#pragma mark - EventBooking
- (void)createAuthenticatedAtEventWithName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withCompany:(NSString *)company withDataCollectors:(NSString *)dataCollectors withLiveSupport:(NSString *)liveSupport withExtraPhone:(NSString *)extraPhone withExtraLive:(NSString *)extraLive withAutomaticReport:(NSString *)automaticReport withBeacons:(NSString *)beacons withPricing:(NSString *)pricing;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventWithValue:(NSString *)value;
@end
