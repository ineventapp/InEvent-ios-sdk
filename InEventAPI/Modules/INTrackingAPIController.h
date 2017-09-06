#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTrackingAPIController : INAPIController

#pragma mark - Tracking
- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date;
- (void)createAuthenticatedWithContent:(NSString *)content;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withRoot:(NSString *)root withModule:(NSString *)module;
- (void)getAuthenticatedAtTracking:(NSInteger)trackingID;
@end