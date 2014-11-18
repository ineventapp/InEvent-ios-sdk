#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTrackingAPIController : INAPIController

#pragma mark - Tracking
- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date;
- (void)createAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtTracking:(NSInteger)trackingID;

@end